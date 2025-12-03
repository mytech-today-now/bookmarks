<#
.SYNOPSIS
    Manage a consistent "myTech.Today" bookmarks folder across multiple browsers.
.DESCRIPTION
    This script builds and maintains a structured "myTech.Today" bookmarks tree in supported
    browsers. For each application category it generates topic-focused bookmark groups
    (news and updates, aggregators, ratings and reviews, statistics, videos, how-to guides,
    resources, and search engines) and links to local myTech.Today logs and configuration folders.

    For Chromium-based browsers the script can add, remove, or restore the bookmark structure directly in
    the bookmarks file. For Firefox-family and HTML-only browsers it generates importable bookmark HTML files
    that you can load via the browser's library/import UI. All operations write detailed log output via the
    shared logging module.

    Backup files are stored in %USERPROFILE%\myTech.Today\Backups\<BrowserName>\
    Log files are stored in %USERPROFILE%\myTech.Today\logs\bookmarks.md and archived monthly as bookmarks.YYYY-MM.md
.PARAMETER Mode
    Specifies whether to Add, Remove, or Restore the myTech.Today bookmark structure.
.PARAMETER Browser
    One or more target browsers (Chrome, Edge, Brave, Firefox, Vivaldi, Opera, etc. or 'All').
.PARAMETER BackupPath
    When Mode is Restore, the path to a backup file containing browser bookmarks.
    - For Chromium-based browsers: a JSON backup file created by this script.
    - For Firefox-family browsers: a places.sqlite backup file created by this script.
.PARAMETER CuratedLinksPath
    Optional path to a .psd1 or .ps1 file containing curated bookmark data; if omitted, default names in the script folder are probed.
.PARAMETER WhatIf
    Shows what would change without modifying any bookmark files.
.EXAMPLE
    Install (add) the myTech.Today bookmark structure for all supported browsers:

        .\bookmarks\bookmarks.ps1 -Mode Add -Browser All

.EXAMPLE
    Uninstall (remove) the myTech.Today bookmark structure for all supported browsers:

        .\bookmarks\bookmarks.ps1 -Mode Remove -Browser All

.EXAMPLE
    Restore the bookmarks for a specific Chromium-based browser from a JSON backup file:

        .\bookmarks\bookmarks.ps1 -Mode Restore -Browser Chrome -BackupPath "C:\Users\YourUserName\myTech.Today\Backups\Chrome\Bookmarks_20250101_120000.json"

.EXAMPLE
    Restore the bookmarks for a Firefox profile from a places.sqlite backup file:

        .\bookmarks\bookmarks.ps1 -Mode Restore -Browser Firefox -BackupPath "C:\Users\YourUserName\myTech.Today\Backups\Firefox\places_oyxj9ris.default-release_20250101_120000.sqlite"

.NOTES
    Version : 1.3.2
    Script  : bookmarks.ps1
    Project : myTech.Today PowerShellScripts
    Author  : Kyle Rode (myTech.Today)
    LastModified: 2025-12-02 - Enhanced Event Viewer logging with descriptive messages
#>


#Requires -Version 5.1
[CmdletBinding()]
param(
    [ValidateSet('Add','Remove','Restore')]
    [string]$Mode = 'Add',

    [ValidateSet('Chrome','Brave','Firefox','Edge','Vivaldi','Opera','OperaGX','LibreWolf','TorBrowser','Waterfox','Chromium','PaleMoon','UngoogledChromium','Midori','Min','All')]
    [string[]]$Browser = @('All'),

    [string]$BackupPath,

    [string]$CuratedLinksPath,

    [switch]$WhatIf,

    # Performance optimization switches
    [switch]$SkipFavicons,           # Skip all favicon fetching for maximum speed
    [int]$FaviconParallelism = 10,   # Number of concurrent favicon downloads (default: 10)
    [switch]$UseGoogleFavicons       # Use Google's favicon service only (faster, more reliable)
)

$ErrorActionPreference = 'Stop'

# Import generic logging module (Local first, GitHub fallback)
$script:LoggingModuleLoaded = $false
$localLoggingPath = Join-Path $PSScriptRoot "..\scripts\logging.ps1"

# Try local logging module first
if (Test-Path $localLoggingPath) {
    try {
        Write-Host "Loading local logging module..." -ForegroundColor Cyan
        . $localLoggingPath
        $script:LoggingModuleLoaded = $true
        Write-Host "[OK] Loaded logging module from local path" -ForegroundColor Green
    }
    catch {
        Write-Host "[ERROR] Failed to load local logging module: $_" -ForegroundColor Red
    }
}

# Fallback to GitHub if local failed
if (-not $script:LoggingModuleLoaded) {
    try {
        Write-Host "[INFO] Falling back to GitHub logging module..." -ForegroundColor Yellow
        $loggingUrl = 'https://raw.githubusercontent.com/mytech-today-now/scripts/refs/heads/main/logging.ps1'
        Invoke-Expression (Invoke-WebRequest -Uri $loggingUrl -UseBasicParsing).Content
        $script:LoggingModuleLoaded = $true
        Write-Host "[OK] Generic logging module loaded successfully" -ForegroundColor Green
    }
    catch {
        Write-Host "[ERROR] Failed to load generic logging module: $_" -ForegroundColor Red
    }
}

if (-not $script:LoggingModuleLoaded) {
    Write-Warning "Logging module not available. Exiting."
    return
}

# Initialize logging
# The logging module creates logs at %USERPROFILE%\myTech.Today\logs\bookmarks.md
# and automatically archives them monthly as bookmarks.YYYY-MM.md
$logPath = Initialize-Log -ScriptName "Bookmarks-Manager" -ScriptVersion "1.4.0"
Write-Log "=== Bookmarks Manager started (Mode=$Mode) ===" -Level INFO

# Store performance flags as script-level variables for access in functions
$script:SkipFavicons = $SkipFavicons.IsPresent
$script:UseGoogleFavicons = $UseGoogleFavicons.IsPresent
$script:FaviconParallelism = $FaviconParallelism

if ($script:SkipFavicons) {
    Write-Log "Favicon fetching DISABLED for maximum speed" -Level INFO
} elseif ($script:UseGoogleFavicons) {
    Write-Log "Using Google Favicon Service only for faster, more reliable icons" -Level INFO
}

function Get-InstallerCategories {
    $installPath = Join-Path $PSScriptRoot "..\app_installer\install.ps1"
    if (-not (Test-Path $installPath)) { return @() }
    $content = Get-Content $installPath -Raw
    $matches = [regex]::Matches($content, 'Category\s*=\s*"([^"]+)"')
    $matches | ForEach-Object { $_.Groups[1].Value } | Sort-Object -Unique
}

function Convert-ToFileUrl {
    param([string]$Path)
    $p = $Path -replace '\\','/'
    if (-not $p.EndsWith('/')) { $p += '/' }
    "file:///$p"
}

# Cache for favicon data URIs to avoid repeated downloads
$script:FaviconCache = @{}

# Cache for domain-level favicon failures to avoid repeated fallback attempts
$script:DomainFaviconFailures = @{}

# Persistent favicon cache file for cross-session caching
$script:FaviconCacheFile = Join-Path $env:USERPROFILE 'myTech.Today\cache\favicon-cache.json'

function Initialize-FaviconCache {
    <#
    .SYNOPSIS
        Loads the favicon cache from disk if it exists.
    #>
    if (Test-Path $script:FaviconCacheFile) {
        try {
            $cached = Get-Content $script:FaviconCacheFile -Raw | ConvertFrom-Json
            foreach ($prop in $cached.PSObject.Properties) {
                $script:FaviconCache[$prop.Name] = $prop.Value
            }
            Write-Log "Loaded $($script:FaviconCache.Count) cached favicons from disk" -Level INFO
        }
        catch {
            Write-Log "Failed to load favicon cache: $_" -Level WARNING
        }
    }
}

function Save-FaviconCache {
    <#
    .SYNOPSIS
        Saves the favicon cache to disk for future sessions.
    #>
    try {
        $cacheDir = Split-Path $script:FaviconCacheFile -Parent
        if (-not (Test-Path $cacheDir)) {
            New-Item -ItemType Directory -Path $cacheDir -Force | Out-Null
        }
        # Only save successful fetches (non-null values)
        $toSave = @{}
        foreach ($key in $script:FaviconCache.Keys) {
            if ($script:FaviconCache[$key]) {
                $toSave[$key] = $script:FaviconCache[$key]
            }
        }
        $toSave | ConvertTo-Json -Depth 2 -Compress | Set-Content $script:FaviconCacheFile -Encoding UTF8
        Write-Log "Saved $($toSave.Count) favicons to cache" -Level INFO
    }
    catch {
        Write-Log "Failed to save favicon cache: $_" -Level WARNING
    }
}

function Get-FaviconUrlForDomain {
    <#
    .SYNOPSIS
        Gets a reliable favicon URL for a domain using Google's service.
    #>
    param([string]$Domain)

    if (-not $Domain) { return $null }
    return "https://www.google.com/s2/favicons?domain=$Domain&sz=32"
}

function Get-FaviconsBatch {
    <#
    .SYNOPSIS
        Fetches favicons for multiple bookmarks in parallel using runspaces.
    .DESCRIPTION
        Uses PowerShell runspaces for true parallel processing, significantly
        faster than sequential fetching for large bookmark sets.
    #>
    param(
        [array]$Bookmarks,
        [int]$MaxParallel = 10,
        [switch]$UseGoogleOnly
    )

    if ($script:SkipFavicons -or $Bookmarks.Count -eq 0) { return @{} }

    $results = [System.Collections.Concurrent.ConcurrentDictionary[string,string]]::new()
    $runspacePool = [runspacefactory]::CreateRunspacePool(1, $MaxParallel)
    $runspacePool.Open()

    $jobs = @()
    $scriptBlock = {
        param($Url, $IconUrl, $UseGoogleOnly)

        try {
            $domain = $null
            if ($Url -match 'https?://([^/]+)') { $domain = $Matches[1] }

            $faviconUrl = if ($UseGoogleOnly -and $domain) {
                "https://www.google.com/s2/favicons?domain=$domain&sz=32"
            } elseif ($IconUrl) {
                $IconUrl
            } elseif ($domain) {
                "https://$domain/favicon.ico"
            } else {
                return $null
            }

            $response = Invoke-WebRequest -Uri $faviconUrl -UseBasicParsing -TimeoutSec 3 -ErrorAction Stop
            if ($response.Content -and $response.Content.Length -gt 10) {
                $base64 = [Convert]::ToBase64String($response.Content)
                return "data:image/x-icon;base64,$base64"
            }
        }
        catch { }
        return $null
    }

    Write-Log "Starting parallel favicon fetch for $($Bookmarks.Count) bookmarks (max $MaxParallel concurrent)..." -Level INFO
    $sw = [System.Diagnostics.Stopwatch]::StartNew()

    foreach ($bookmark in $Bookmarks) {
        $url = $bookmark.URL
        $iconUrl = if ($bookmark.Icon) { $bookmark.Icon } elseif ($bookmark.icon) { $bookmark.icon } else { $null }

        # Skip if already cached
        $cacheKey = $url
        if ($script:FaviconCache.ContainsKey($cacheKey) -and $script:FaviconCache[$cacheKey]) {
            $results[$cacheKey] = $script:FaviconCache[$cacheKey]
            continue
        }

        $powershell = [powershell]::Create().AddScript($scriptBlock).AddArgument($url).AddArgument($iconUrl).AddArgument($UseGoogleOnly)
        $powershell.RunspacePool = $runspacePool

        $jobs += @{
            PowerShell = $powershell
            Handle = $powershell.BeginInvoke()
            Url = $url
        }
    }

    # Collect results
    foreach ($job in $jobs) {
        try {
            $result = $job.PowerShell.EndInvoke($job.Handle)
            if ($result) {
                $results[$job.Url] = $result
                $script:FaviconCache[$job.Url] = $result
            }
        }
        catch { }
        finally {
            $job.PowerShell.Dispose()
        }
    }

    $runspacePool.Close()
    $runspacePool.Dispose()

    $sw.Stop()
    Write-Log "Parallel favicon fetch completed: $($results.Count) fetched in $($sw.ElapsedMilliseconds)ms" -Level INFO

    return $results
}

function Test-IsValidImageBytes {
    <#
    .SYNOPSIS
        Validates that byte array contains actual image data, not HTML or other content.
    #>
    param(
        [byte[]]$Bytes,
        [int]$MinSize = 100
    )

    if (-not $Bytes -or $Bytes.Length -lt $MinSize) {
        return $false
    }

    # Check for common image magic bytes
    # PNG: 89 50 4E 47 (‰PNG)
    # ICO: 00 00 01 00 or 00 00 02 00
    # GIF: 47 49 46 38 (GIF8)
    # JPEG: FF D8 FF
    # BMP: 42 4D (BM)
    # WebP: 52 49 46 46 (RIFF) followed by WEBP
    # SVG: starts with < (3C) typically <?xml or <svg

    $isPng = ($Bytes[0] -eq 0x89 -and $Bytes[1] -eq 0x50 -and $Bytes[2] -eq 0x4E -and $Bytes[3] -eq 0x47)
    $isIco = ($Bytes[0] -eq 0x00 -and $Bytes[1] -eq 0x00 -and ($Bytes[2] -eq 0x01 -or $Bytes[2] -eq 0x02) -and $Bytes[3] -eq 0x00)
    $isGif = ($Bytes[0] -eq 0x47 -and $Bytes[1] -eq 0x49 -and $Bytes[2] -eq 0x46 -and $Bytes[3] -eq 0x38)
    $isJpeg = ($Bytes[0] -eq 0xFF -and $Bytes[1] -eq 0xD8 -and $Bytes[2] -eq 0xFF)
    $isBmp = ($Bytes[0] -eq 0x42 -and $Bytes[1] -eq 0x4D)
    $isWebP = ($Bytes[0] -eq 0x52 -and $Bytes[1] -eq 0x49 -and $Bytes[2] -eq 0x46 -and $Bytes[3] -eq 0x46)

    # Check for SVG (XML-based, starts with < or whitespace then <)
    $isSvg = $false
    $textStart = [System.Text.Encoding]::UTF8.GetString($Bytes[0..([Math]::Min(100, $Bytes.Length - 1))])
    if ($textStart -match '^\s*<(\?xml|svg|!DOCTYPE\s+svg)') {
        $isSvg = $true
    }

    # Check for HTML (which we want to reject)
    $isHtml = $textStart -match '^\s*<!DOCTYPE\s+html|^\s*<html|^\s*<head|^\s*<body|Just a moment'

    if ($isHtml) {
        return $false
    }

    return ($isPng -or $isIco -or $isGif -or $isJpeg -or $isBmp -or $isWebP -or $isSvg)
}

function Get-DomainFromUrl {
    <#
    .SYNOPSIS
        Extracts the domain from a URL.
    #>
    param([string]$Url)

    try {
        $uri = [System.Uri]::new($Url)
        return $uri.Host
    }
    catch {
        # Fallback regex extraction
        if ($Url -match 'https?://([^/]+)') {
            return $matches[1]
        }
        return $null
    }
}

function Get-FaviconWithFallback {
    <#
    .SYNOPSIS
        Attempts to fetch a favicon using parallel requests - first success wins.
    .DESCRIPTION
        Fires all favicon source requests IN PARALLEL and returns the first successful result.
        This dramatically reduces fetch time by not waiting for sequential failures.

        Sources tried simultaneously:
        - https://www.<domain>.<tld>/favicon.ico
        - https://<domain>.<tld>/favicon.ico
        - https://www.google.com/s2/favicons?domain=<domain>.<tld>&sz=32
        - https://icons.duckduckgo.com/ip3/<domain>.<tld>.ico
        - https://<domain>.<tld>/favicon.png
        - https://<domain>.<tld>/apple-touch-icon.png
        - https://<domain>.<tld>/apple-touch-icon-precomposed.png
    #>
    param(
        [string]$IconUrl,
        [string]$BookmarkUrl
    )

    $domain = $null

    # Extract domain from bookmark URL or icon URL
    if ($BookmarkUrl) {
        $domain = Get-DomainFromUrl -Url $BookmarkUrl
    }
    if (-not $domain -and $IconUrl) {
        $domain = Get-DomainFromUrl -Url $IconUrl
    }

    if (-not $domain) {
        Write-Log "Unable to extract domain for favicon fetch" -Level WARNING
        return $null
    }

    # Check if we've already failed all fallbacks for this domain
    if ($script:DomainFaviconFailures.ContainsKey($domain)) {
        Write-Log "Skipping favicon fetch for $domain - all fallbacks previously failed" -Level INFO
        return $null
    }

    # Extract the base domain (without www prefix) for service URLs
    $baseDomain = $domain -replace '^www\.', ''

    # Check cache first for any of the URLs we're about to try
    $cacheKey = "domain:$baseDomain"
    if ($script:FaviconCache.ContainsKey($cacheKey) -and $script:FaviconCache[$cacheKey]) {
        Write-Log "Using cached favicon for domain: $baseDomain" -Level INFO
        return $script:FaviconCache[$cacheKey]
    }

    # Build list of all URLs to try IN PARALLEL
    $urlsToTry = @(
        @{ Url = "https://www.$baseDomain/favicon.ico"; Source = "www favicon.ico" },
        @{ Url = "https://$baseDomain/favicon.ico"; Source = "direct favicon.ico" },
        @{ Url = "https://www.google.com/s2/favicons?domain=$baseDomain&sz=32"; Source = "Google" },
        @{ Url = "https://icons.duckduckgo.com/ip3/$baseDomain.ico"; Source = "DuckDuckGo" },
        @{ Url = "https://$baseDomain/favicon.png"; Source = "favicon.png" },
        @{ Url = "https://$baseDomain/apple-touch-icon.png"; Source = "apple-touch-icon" },
        @{ Url = "https://$baseDomain/apple-touch-icon-precomposed.png"; Source = "apple-touch-icon-precomposed" }
    )

    Write-Log "Fetching favicon for $baseDomain (7 sources in parallel)..." -Level INFO

    # Thread-safe result container - first successful result wins
    $resultFound = [System.Threading.ManualResetEventSlim]::new($false)
    $winningResult = [System.Collections.Concurrent.ConcurrentDictionary[string,object]]::new()

    # Create runspace pool for parallel execution
    $runspacePool = [runspacefactory]::CreateRunspacePool(1, 7)
    $runspacePool.Open()

    # Script block that each runspace will execute
    $fetchScript = {
        param($Url, $Source, $ResultFound, $WinningResult)

        # Check if another thread already found a result
        if ($ResultFound.IsSet) { return }

        try {
            $headers = @{
                'User-Agent' = 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36'
                'Accept' = 'image/*, */*'
            }

            $response = Invoke-WebRequest -Uri $Url -UseBasicParsing -TimeoutSec 5 -Headers $headers -ErrorAction Stop
            $imageBytes = $response.Content

            # Validate response
            if (-not $imageBytes -or $imageBytes.Length -lt 100) { return }

            # Check for HTML content (not an image)
            if ($imageBytes.Length -ge 5) {
                $header = [System.Text.Encoding]::ASCII.GetString($imageBytes[0..4])
                if ($header -match '^<[!?]|^<html|^<HTML') { return }
            }

            # Determine MIME type from magic bytes
            $mimeType = 'image/x-icon'
            if ($imageBytes.Length -ge 4) {
                if ($imageBytes[0] -eq 0x89 -and $imageBytes[1] -eq 0x50) { $mimeType = 'image/png' }
                elseif ($imageBytes[0] -eq 0xFF -and $imageBytes[1] -eq 0xD8) { $mimeType = 'image/jpeg' }
                elseif ($imageBytes[0] -eq 0x47 -and $imageBytes[1] -eq 0x49) { $mimeType = 'image/gif' }
            }

            # Convert to data URI
            $base64 = [Convert]::ToBase64String($imageBytes)
            $dataUri = "data:$mimeType;base64,$base64"

            # Try to be the first to set the result
            if ($WinningResult.TryAdd('dataUri', $dataUri)) {
                $WinningResult.TryAdd('source', $Source)
                $WinningResult.TryAdd('url', $Url)
                $WinningResult.TryAdd('bytes', $imageBytes.Length)
                $ResultFound.Set()
            }
        }
        catch {
            # Silently ignore failures - other parallel requests may succeed
        }
    }

    # Launch all requests in parallel
    $jobs = @()
    foreach ($urlInfo in $urlsToTry) {
        $ps = [powershell]::Create()
        $ps.RunspacePool = $runspacePool
        [void]$ps.AddScript($fetchScript)
        [void]$ps.AddArgument($urlInfo.Url)
        [void]$ps.AddArgument($urlInfo.Source)
        [void]$ps.AddArgument($resultFound)
        [void]$ps.AddArgument($winningResult)

        $jobs += @{
            PowerShell = $ps
            Handle = $ps.BeginInvoke()
            Url = $urlInfo.Url
            Source = $urlInfo.Source
        }
    }

    # Wait for first success OR all to complete (max 6 seconds)
    $timeout = 6000
    $sw = [System.Diagnostics.Stopwatch]::StartNew()

    while (-not $resultFound.IsSet -and $sw.ElapsedMilliseconds -lt $timeout) {
        # Check if all jobs completed
        $allComplete = $true
        foreach ($job in $jobs) {
            if (-not $job.Handle.IsCompleted) {
                $allComplete = $false
                break
            }
        }
        if ($allComplete) { break }
        Start-Sleep -Milliseconds 50
    }

    # Clean up all jobs
    foreach ($job in $jobs) {
        try {
            if ($job.Handle.IsCompleted) {
                $job.PowerShell.EndInvoke($job.Handle)
            }
            $job.PowerShell.Dispose()
        } catch { }
    }

    $runspacePool.Close()
    $runspacePool.Dispose()
    $resultFound.Dispose()

    # Check if we got a result
    if ($winningResult.ContainsKey('dataUri')) {
        $dataUri = $winningResult['dataUri']
        $source = $winningResult['source']
        $bytes = $winningResult['bytes']

        # Cache the result for this domain
        $script:FaviconCache[$cacheKey] = $dataUri

        Write-Log "Favicon found for $baseDomain from $source ($bytes bytes) in $($sw.ElapsedMilliseconds)ms" -Level INFO
        return $dataUri
    }

    # All requests failed - mark domain as failed to avoid future attempts
    $script:DomainFaviconFailures[$domain] = $true
    Write-Log "All 7 parallel favicon requests failed for: $baseDomain" `
        -Level ERROR `
        -Context "Parallel fetch attempted for $baseDomain with 6s timeout" `
        -Solution "The website may not have a favicon, or all sources are temporarily unavailable" `
        -Component "Favicon Fetcher"

    return $null
}

function Get-FaviconFromUrl {
    <#
    .SYNOPSIS
        Fetches a favicon from a specific URL with validation.
    #>
    param(
        [string]$Url,
        [string]$Source = "Direct"
    )

    if (-not $Url) { return $null }

    # Check cache first
    if ($script:FaviconCache.ContainsKey($Url)) {
        return $script:FaviconCache[$Url]
    }

    try {
        Write-Log "Fetching favicon from $Source`: $Url" -Level INFO

        # Download the favicon with appropriate headers
        $headers = @{
            'User-Agent' = 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36'
            'Accept' = 'image/*, */*'
        }

        $response = Invoke-WebRequest -Uri $Url -UseBasicParsing -TimeoutSec 5 -Headers $headers -ErrorAction Stop

        # Get content type from headers
        $contentType = $response.Headers['Content-Type']
        if ($contentType -is [array]) {
            $contentType = $contentType[0]
        }

        $imageBytes = $response.Content

        # Validate response size
        if (-not $imageBytes -or $imageBytes.Length -lt 10) {
            throw "Response too small to be a valid image ($($imageBytes.Length) bytes)"
        }

        # Validate that we got actual image data using magic bytes
        if (-not (Test-IsValidImageBytes -Bytes $imageBytes -MinSize 10)) {
            throw "Response does not contain valid image data (failed magic byte check)"
        }

        # Determine MIME type from magic bytes if Content-Type is missing or generic
        if (-not $contentType -or $contentType -match 'octet-stream|text/') {
            $contentType = Get-MimeTypeFromBytes -Bytes $imageBytes -FallbackUrl $Url
        }

        # Convert to base64
        $base64 = [Convert]::ToBase64String($imageBytes)
        $dataUri = "data:$contentType;base64,$base64"

        # Cache the result
        $script:FaviconCache[$Url] = $dataUri

        Write-Log "Successfully fetched favicon from $Source`: $Url ($($imageBytes.Length) bytes)" -Level INFO
        return $dataUri
    }
    catch {
        $errorMsg = $_.Exception.Message
        # Truncate long error messages (e.g., Cloudflare HTML responses)
        if ($errorMsg.Length -gt 200) {
            $errorMsg = $errorMsg.Substring(0, 200) + "..."
        }
        Write-Log "Failed to fetch favicon from $Source ($Url): $errorMsg" -Level WARNING
        # Cache the failure to avoid repeated attempts
        $script:FaviconCache[$Url] = $null
        return $null
    }
}

function Get-MimeTypeFromBytes {
    <#
    .SYNOPSIS
        Determines MIME type from image magic bytes.
    #>
    param(
        [byte[]]$Bytes,
        [string]$FallbackUrl
    )

    if ($Bytes.Length -ge 4) {
        # PNG
        if ($Bytes[0] -eq 0x89 -and $Bytes[1] -eq 0x50 -and $Bytes[2] -eq 0x4E -and $Bytes[3] -eq 0x47) {
            return 'image/png'
        }
        # ICO
        if ($Bytes[0] -eq 0x00 -and $Bytes[1] -eq 0x00 -and ($Bytes[2] -eq 0x01 -or $Bytes[2] -eq 0x02) -and $Bytes[3] -eq 0x00) {
            return 'image/x-icon'
        }
        # GIF
        if ($Bytes[0] -eq 0x47 -and $Bytes[1] -eq 0x49 -and $Bytes[2] -eq 0x46 -and $Bytes[3] -eq 0x38) {
            return 'image/gif'
        }
        # WebP
        if ($Bytes[0] -eq 0x52 -and $Bytes[1] -eq 0x49 -and $Bytes[2] -eq 0x46 -and $Bytes[3] -eq 0x46) {
            return 'image/webp'
        }
    }
    if ($Bytes.Length -ge 3) {
        # JPEG
        if ($Bytes[0] -eq 0xFF -and $Bytes[1] -eq 0xD8 -and $Bytes[2] -eq 0xFF) {
            return 'image/jpeg'
        }
    }
    if ($Bytes.Length -ge 2) {
        # BMP
        if ($Bytes[0] -eq 0x42 -and $Bytes[1] -eq 0x4D) {
            return 'image/bmp'
        }
    }

    # Check for SVG
    $textStart = [System.Text.Encoding]::UTF8.GetString($Bytes[0..([Math]::Min(100, $Bytes.Length - 1))])
    if ($textStart -match '^\s*<(\?xml|svg)') {
        return 'image/svg+xml'
    }

    # Fallback: guess from URL extension
    if ($FallbackUrl -match '\.png(\?|$)') { return 'image/png' }
    if ($FallbackUrl -match '\.(jpg|jpeg)(\?|$)') { return 'image/jpeg' }
    if ($FallbackUrl -match '\.gif(\?|$)') { return 'image/gif' }
    if ($FallbackUrl -match '\.svg(\?|$)') { return 'image/svg+xml' }
    if ($FallbackUrl -match '\.webp(\?|$)') { return 'image/webp' }

    # Default for .ico files
    return 'image/x-icon'
}

function Get-FaviconDataUri {
    <#
    .SYNOPSIS
        Gets a favicon data URI with robust fallback handling.
    .DESCRIPTION
        This is the main entry point for favicon fetching. It uses Get-FaviconWithFallback
        to try multiple sources when the primary icon URL fails.
        Can be skipped entirely with -SkipFavicons for maximum speed.
    #>
    param(
        [string]$IconUrl,
        [string]$BookmarkUrl
    )

    # Skip if favicon fetching is disabled
    if ($script:SkipFavicons) { return $null }

    if (-not $IconUrl -and -not $BookmarkUrl) { return $null }

    # Check cache first (including URL as cache key)
    $cacheKey = if ($BookmarkUrl) { $BookmarkUrl } else { $IconUrl }
    if ($script:FaviconCache.ContainsKey($cacheKey) -and $script:FaviconCache[$cacheKey]) {
        return $script:FaviconCache[$cacheKey]
    }

    # Use Google favicon service if enabled (faster and more reliable)
    if ($script:UseGoogleFavicons -and $BookmarkUrl) {
        $domain = Get-DomainFromUrl -Url $BookmarkUrl
        if ($domain) {
            $googleUrl = "https://www.google.com/s2/favicons?domain=$domain&sz=32"
            $result = Get-FaviconFromUrl -Url $googleUrl -Source "Google Favicon Service"
            if ($result) {
                $script:FaviconCache[$cacheKey] = $result
                return $result
            }
        }
    }

    # Use the fallback-enabled function
    return Get-FaviconWithFallback -IconUrl $IconUrl -BookmarkUrl $BookmarkUrl
}

function New-BookmarkUrlNode {
    param(
        [string]$Name,
        [string]$Url,
        [string]$Icon = $null
    )

    $node = [PSCustomObject]@{
        name = $Name
        type = 'url'
        url  = $Url
    }

    # Add meta_info with icon_url if Icon is provided (for Chromium browsers)
    if ($Icon) {
        $node | Add-Member -MemberType NoteProperty -Name 'meta_info' -Value ([PSCustomObject]@{
            icon_url = $Icon
        })
    }

    return $node
}

function New-BookmarkSubfolder {
    <#
    .SYNOPSIS
        Creates a bookmark subfolder node with the specified name and children.
    .DESCRIPTION
        Helper function to create a consistent bookmark folder structure.
        Each subfolder contains a collection of bookmark URL nodes.
    #>
    param(
        [string]$Name,
        [array]$Children
    )

    if ($Children.Count -eq 0) {
        return $null
    }

    [PSCustomObject]@{
        name     = $Name
        type     = 'folder'
        children = $Children
    }
}




$script:TopicCategories = @{
    'SoftwareTools' = @{
        'Browsers'      = 'web browser'
        'Development'   = 'software development'
        'Productivity'  = 'productivity tools'
        'Media'         = 'media software'
        'Utilities'     = 'system utilities'
        'Security'      = 'computer security'
        'Communication' = 'communication tools'
        'Remote Access' = 'remote desktop software'
        'Maintenance'   = 'pc maintenance tools'
        'Shortcuts'     = 'productivity shortcuts'
    }
    'WebServices' = @{
        'Cloud Storage' = 'cloud storage'
        'Social'        = 'social media platforms'
        'Reference'     = 'online reference tools'
        'Ecommerce'     = 'online shopping sites'
        'Health'        = 'health and wellness resources'
        'Travel'        = 'travel planning websites'
        'Weather'       = 'weather forecast services'
        'Forums'        = 'tech discussion forums'
        'Documentation' = 'api and dev documentation'
        'Backup'        = 'online backup services'
    }
    'Entertainment' = @{
        'Gaming'        = 'pc gaming platforms'
        'Education'     = 'online education'
        'Finance'       = 'personal finance software'  # Moved here for user-facing web tools
    }
    'NicheEdgy' = @{
        'Conspiracy'    = 'conspiracy theory hubs'
        'Piracy'        = 'file sharing archives'
        'MemeEconomy'   = 'meme trading outposts'
        'UrbanSurvival' = 'off-grid survival guides'
        'CryptoScams'   = 'crypto scheme trackers'
        'RetroWare'     = 'abandonware download dens'
        'Hacktivism'    = 'whistleblower leak sites'
        'BootlegMedia'  = 'unofficial streaming dens'
        'ParanoidPrep'  = 'privacy evasion toolkits'
        'DarkPatterns'  = 'ux trick dissection labs'
    }
    'AI' = @{
        'Generative'    = 'generative ai tools'
        'Chatbots'      = 'ai chat assistants'
        'ImageGen'      = 'ai image generators'
        'CodeAssist'    = 'ai coding helpers'
        'VoiceAI'       = 'ai voice synthesis'
        'Analytics'     = 'ai data analytics'
    }
    'OnlineTools' = @{
        'Converters'        = 'online file converters'
        'MediaDownloaders'  = 'online free media downloaders'
        'ImageEditors'      = 'online image editors'
        'PDFUtils'          = 'online pdf tools'
        'TextProcessors'    = 'online text formatters'
        'Calculators'       = 'online math calculators'
        'Compressors'       = 'online file compressors'
    }
}




function Get-TopicGroupForCategory {
    param([string]$Category)

    if (-not $Category) { return 'Other' }

    if ($script:TopicCategories -is [hashtable]) {
        foreach ($groupName in $script:TopicCategories.Keys) {
            $topicGroup = $script:TopicCategories[$groupName]
            if ($topicGroup -is [hashtable] -and $topicGroup.ContainsKey($Category)) {
                return $groupName
            }
        }
    }

    return 'Other'
}

function Initialize-CuratedBookmarks {
    param(
        [string]$Path
    )

    $pathsToTry = @()

    if ($Path) {
        if (-not [IO.Path]::IsPathRooted($Path)) {
            $pathsToTry += (Join-Path $PSScriptRoot $Path)
        }
        else {
            $pathsToTry += $Path
        }
    }
    else {
        $pathsToTry += @(
            (Join-Path $PSScriptRoot 'links.psd1'),
            (Join-Path $PSScriptRoot 'links.ps1'),
            (Join-Path $PSScriptRoot 'links-sample.psd1'),
            (Join-Path $PSScriptRoot 'links-sample.ps1')
        )
    }

    foreach ($candidate in $pathsToTry) {
        if (-not (Test-Path -LiteralPath $candidate)) { continue }

        try {
            $ext  = [IO.Path]::GetExtension($candidate)
            $data = $null

            if ($ext -ieq '.psd1') {
                $data = Import-PowerShellDataFile -LiteralPath $candidate
            }
            elseif ($ext -ieq '.ps1') {
                $data = & $candidate
            }

            if ($data -is [hashtable]) {
                $script:CuratedBookmarks = $data
                Write-Log "Loaded curated bookmark data from '$candidate'." -Level INFO
                return
            }
        }
        catch {
            Write-Log "Failed to load curated bookmark data from '$candidate': $_" -Level WARNING
        }
    }

    Write-Log "No curated bookmark data file found; using abstracted link patterns only." -Level INFO
}

function Import-ExternalDataSource {
    <#
    .SYNOPSIS
        Loads a single external data source file (.ps1 or .psd1).
    .DESCRIPTION
        Handles both .ps1 (script) and .psd1 (data) files.
        For .psd1 files that fail with Import-PowerShellDataFile, falls back to Invoke-Expression.
    #>
    param([string]$Path)

    $ext = [IO.Path]::GetExtension($Path)
    $data = $null

    if ($ext -ieq '.psd1') {
        # Try Import-PowerShellDataFile first (safer)
        try {
            $data = Import-PowerShellDataFile -LiteralPath $Path
        }
        catch {
            # Fallback to Invoke-Expression for complex nested structures
            try {
                $content = Get-Content $Path -Raw -Encoding UTF8
                $data = Invoke-Expression $content
            }
            catch {
                throw "Failed to parse .psd1 file: $_"
            }
        }
    }
    elseif ($ext -ieq '.ps1') {
        $data = & $Path
    }

    return $data
}

function Load-ExternalDataSources {
    <#
    .SYNOPSIS
        Loads external data source files (e.g., europe.ps1, asia.psd1) and merges them into curated bookmarks.
    .DESCRIPTION
        This function looks for external data files in the script directory and merges their
        content into the main $script:CuratedBookmarks hashtable. This allows large datasets
        like regional news sources to be maintained in separate files.

        Supports both .ps1 and .psd1 files. For .psd1 files with deeply nested structures
        that fail with Import-PowerShellDataFile, automatically falls back to Invoke-Expression.
    #>

    if (-not $script:CuratedBookmarks) {
        $script:CuratedBookmarks = @{}
    }

    # List of external data source files to load (in priority order)
    # Check for both .ps1 and .psd1 versions
    # MergePath: if specified, merge into that nested path (e.g., 'News/International News')
    #            if not specified, merge at root level
    # RootKey: for sources that have a top-level wrapper key (e.g., 'Banned Links'), extract content from that key
    $externalSources = @(
        # International News sources - merge into News/International News
        @{ Name = 'europe';          Extensions = @('.ps1', '.psd1'); MergePath = 'News/International News' }
        @{ Name = 'asia';            Extensions = @('.psd1', '.ps1'); MergePath = 'News/International News' }
        @{ Name = 'africa';          Extensions = @('.psd1', '.ps1'); MergePath = 'News/International News' }
        @{ Name = 'central_america'; Extensions = @('.psd1', '.ps1'); MergePath = 'News/International News' }
        @{ Name = 'middle_east';     Extensions = @('.psd1', '.ps1'); MergePath = 'News/International News' }
        @{ Name = 'south_america';   Extensions = @('.psd1', '.ps1'); MergePath = 'News/International News' }
        @{ Name = 'australasia';     Extensions = @('.psd1', '.ps1'); MergePath = 'News/International News' }
        @{ Name = 'north_america';   Extensions = @('.psd1', '.ps1'); MergePath = 'News/International News' }
        # OSINT sources - merge at root level (OSINT is now at root of banned-links.psd1)
        @{ Name = 'banned-links';    Extensions = @('.psd1', '.ps1'); MergePath = '' }
    )

    $sw = [System.Diagnostics.Stopwatch]::StartNew()

    foreach ($source in $externalSources) {
        $loaded = $false

        foreach ($ext in $source.Extensions) {
            if ($loaded) { break }

            $sourceName = "$($source.Name)$ext"
            $sourcePath = Join-Path $PSScriptRoot $sourceName

            if (-not (Test-Path -LiteralPath $sourcePath)) { continue }

            try {
                Write-Log "Loading external data source from '$sourceName'..." -Level INFO
                $loadStart = [System.Diagnostics.Stopwatch]::StartNew()

                $externalData = Import-ExternalDataSource -Path $sourcePath

                $loadStart.Stop()

                if ($externalData -is [hashtable]) {
                    # If RootKey is specified, extract content from that wrapper key
                    # (e.g., banned-links.psd1 has 'Banned Links' as wrapper, extract content from within)
                    $dataToMerge = $externalData
                    if ($source.RootKey -and $externalData.ContainsKey($source.RootKey)) {
                        $dataToMerge = $externalData[$source.RootKey]
                        Write-Log "Extracting content from RootKey '$($source.RootKey)'" -Level INFO
                    }

                    # Determine merge target based on MergePath
                    $mergeTarget = $script:CuratedBookmarks
                    $mergePath = $source.MergePath

                    if ($mergePath) {
                        # Navigate to the nested path (e.g., 'News/International News' or 'OSINT')
                        $pathParts = $mergePath -split '/'
                        foreach ($part in $pathParts) {
                            if (-not $mergeTarget.ContainsKey($part)) {
                                $mergeTarget[$part] = @{}
                            }
                            $mergeTarget = $mergeTarget[$part]
                        }
                    }

                    # Merge the external data into the target location
                    $addedCount = 0
                    foreach ($key in $dataToMerge.Keys) {
                        if ($mergeTarget.ContainsKey($key)) {
                            if ($mergeTarget[$key] -is [hashtable] -and $mergeTarget[$key].Count -eq 0) {
                                $mergeTarget[$key] = $dataToMerge[$key]
                                $addedCount++
                            }
                        }
                        else {
                            $mergeTarget[$key] = $dataToMerge[$key]
                            $addedCount++
                        }
                    }
                    $mergeInfo = if ($mergePath) { " into '$mergePath'" } else { "" }
                    Write-Log "Loaded $addedCount categories from '$sourceName'$mergeInfo in $($loadStart.ElapsedMilliseconds)ms" -Level INFO
                    $loaded = $true
                }
                else {
                    Write-Log "External data source '$sourceName' did not return a hashtable; skipping." -Level WARNING
                }
            }
            catch {
                Write-Log "Failed to load external data source from '$sourceName': $_" -Level WARNING
            }
        }

        if (-not $loaded) {
            Write-Log "No valid data source found for '$($source.Name)'" -Level INFO
        }
    }

    $sw.Stop()
    Write-Log "External data sources loaded in $($sw.ElapsedMilliseconds)ms" -Level INFO
}


# Recursive helper function to convert hashtable/array data to bookmark nodes
# Handles arbitrary nesting depth: hashtable = folder, array = bookmarks
function ConvertTo-BookmarkNodes {
    param(
        [Parameter(Mandatory = $true)]
        $Data,
        [int]$Depth = 0
    )

    $year = (Get-Date).Year
    $nodes = [System.Collections.ArrayList]::new()

    if ($Data -is [array]) {
        # This is an array of bookmarks - create bookmark URL nodes
        foreach ($bookmark in $Data) {
            if (-not $bookmark) { continue }

            $title = $bookmark.Title
            $url   = $bookmark.URL
            # Handle both 'Icon' and 'icon' keys (case variation in different files)
            $iconUrl = if ($bookmark.Icon) { $bookmark.Icon } elseif ($bookmark.icon) { $bookmark.icon } else { $null }

            if ($null -eq $title -or $null -eq $url) { continue }

            # Replace explicit year placeholder
            $title = $title -replace '\b2025\b', $year.ToString()
            $url   = $url   -replace '\b2025\b', $year.ToString()

            # Expand environment variables in URL
            $url = [Environment]::ExpandEnvironmentVariables($url)

            # Fetch favicon and convert to data URI if icon URL is provided
            $iconDataUri = $null
            if ($iconUrl -or $url) {
                $iconDataUri = Get-FaviconDataUri -IconUrl $iconUrl -BookmarkUrl $url
            }

            # Create bookmark node with icon if available
            if ($iconDataUri) {
                [void]$nodes.Add((New-BookmarkUrlNode -Name $title -Url $url -Icon $iconDataUri))
            }
            else {
                [void]$nodes.Add((New-BookmarkUrlNode -Name $title -Url $url))
            }
        }
    }
    elseif ($Data -is [hashtable]) {
        # This is a hashtable - each key becomes a subfolder, recurse into values
        foreach ($key in $Data.Keys) {
            $value = $Data[$key]
            if (-not $value) { continue }

            # Recursively convert the value
            $childNodes = ConvertTo-BookmarkNodes -Data $value -Depth ($Depth + 1)

            # Use @() to ensure array context for Count check
            $childArray = @($childNodes)
            if ($childArray.Count -gt 0) {
                $subfolder = New-BookmarkSubfolder -Name $key -Children $childArray
                if ($null -ne $subfolder) {
                    [void]$nodes.Add($subfolder)
                }
            }
        }
    }
    # If it's neither array nor hashtable, skip it

    # Return as array to ensure consistent behavior
    return @($nodes)
}

function Get-CategoryBookmarkNodes {
    param(
        [string]$Category
    )

    # Use curated data from external hashtable (e.g., links-sample.psd1/ps1)
    # Supports arbitrary nesting depth: hashtables become folders, arrays become bookmarks
    if ($script:CuratedBookmarks -is [hashtable] -and $script:CuratedBookmarks.ContainsKey($Category)) {
        $categoryTable = $script:CuratedBookmarks[$Category]

        # Use recursive converter to handle any depth
        $curatedNodes = ConvertTo-BookmarkNodes -Data $categoryTable -Depth 0

        # Ensure array context for Count check (handles single-item returns)
        $curatedArray = @($curatedNodes)
        if ($curatedArray.Count -gt 0) {
            Write-Log "Using curated bookmarks for category '$Category' ($($curatedArray.Count) nodes)." -Level INFO
            return $curatedArray
        }
    }

    # No curated data found for this category
    Write-Log "No curated bookmarks found for category '$Category'." -Level WARNING
    return @()
}


function New-MyTechTodayFolder {
    param([string[]]$Categories)

    $root = [PSCustomObject]@{ name = 'myTech.Today'; type = 'folder'; children = @() }

    # Root-level myTech.Today site links
    $root.children += (New-BookmarkUrlNode -Name 'myTech.Today'            -Url 'https://mytech.today/')
    $root.children += (New-BookmarkUrlNode -Name 'myTech.Today tools-2025' -Url 'https://mytech.today/tools-2025')

    # Special root-level categories that should appear directly under myTech.Today
    $rootLevelCategories = @('News', 'Media Downloading', 'OSINT')

    foreach ($rc in $rootLevelCategories) {
        if ($Categories -contains $rc) {
            $links = Get-CategoryBookmarkNodes -Category $rc
            # Ensure array context for Count check
            $linksArray = @($links)
            # Only create category folder if there are curated bookmarks
            if ($linksArray.Count -gt 0) {
                $catFolder = [PSCustomObject]@{ name = $rc; type = 'folder'; children = @() }
                $catFolder.children += $linksArray
                $root.children += $catFolder
            }
        }
    }

    # Group remaining application categories into higher-level topic groups where possible
    $groupedCategories = @{}

    foreach ($cat in $Categories | Sort-Object -Unique) {
        if ($rootLevelCategories -contains $cat) { continue }

        $group = Get-TopicGroupForCategory -Category $cat

        if (-not $groupedCategories.ContainsKey($group)) {
            $groupedCategories[$group] = @()
        }

        $groupedCategories[$group] += $cat
    }

    foreach ($groupName in ($groupedCategories.Keys | Sort-Object)) {
        $groupFolder = [PSCustomObject]@{ name = $groupName; type = 'folder'; children = @() }

        foreach ($cat in ($groupedCategories[$groupName] | Sort-Object -Unique)) {
            $links = Get-CategoryBookmarkNodes -Category $cat
            # Ensure array context for Count check
            $linksArray = @($links)
            # Only create category folder if there are curated bookmarks
            if ($linksArray.Count -gt 0) {
                $catFolder = [PSCustomObject]@{ name = $cat; type = 'folder'; children = @() }
                $catFolder.children += $linksArray
                $groupFolder.children += $catFolder
            }
        }

        # Only add group folder if it has category children
        if ($groupFolder.children.Count -gt 0) {
            $root.children += $groupFolder
        }
    }

    $base = Join-Path $env:USERPROFILE 'myTech.Today'
    $localFolder = [PSCustomObject]@{ name = 'myTech.Today'; type = 'folder'; children = @() }

    # Logs subfolder with specific log files
    $logsFolder = [PSCustomObject]@{ name = 'Logs'; type = 'folder'; children = @() }

    $logsRootPath = Join-Path $base 'logs'
    $logsFolder.children += (New-BookmarkUrlNode -Name 'Logs root' -Url (Convert-ToFileUrl $logsRootPath))

    $computerName       = $env:COMPUTERNAME
    # Belarc Advisor HTML reports live under Program Files (x86)
    $belarcRoot         = 'C:\Program Files (x86)\Belarc\BelarcAdvisor\System\tmp'
    $belarcSystemHtml   = Join-Path $belarcRoot "($computerName).html"
    $disaBenchmarkHtml  = Join-Path $belarcRoot "BenchmarkSummary(($computerName)).html"
    $hotfixReportHtml   = Join-Path $belarcRoot "SummaryQfeExternal(($computerName)).html"

    $appInstallerLog    = Join-Path $base "\logs\AppInstaller.md"
    $wingetUpdateLog    = Join-Path $base "\logs\winget-update.md"
    $appInstallerGuiLog = Join-Path $base "\logs\appinstaller-gui.md"
    $bookmarksLog       = Join-Path $base "\logs\bookmarks-manager.md"
    $hostsLog           = Join-Path $base "\logs\hosts.md"
    $restorePointsLog   = Join-Path $base "\logs\Manage-RestorePoints.md"
    $OOShutUpLog        = Join-Path $base "\logs\OOShutUp10.md"
    $ResponsiveLog      = Join-Path $base "\logs\responsive.md"

    # Use proper file:/// URLs for Belarc reports (spaces encoded as %20, etc.)
    $logsFolder.children += (New-BookmarkUrlNode -Name ("myTech.Today/myTech.Today/Logs/[$belarcSystemHtml]")      -Url ([Uri]::new($belarcSystemHtml).AbsoluteUri))
    $logsFolder.children += (New-BookmarkUrlNode -Name ("myTech.Today/myTech.Today/Logs/[$disaBenchmarkHtml]")     -Url ([Uri]::new($disaBenchmarkHtml).AbsoluteUri))
    $logsFolder.children += (New-BookmarkUrlNode -Name ("myTech.Today/myTech.Today/Logs/[$hotfixReportHtml]")      -Url ([Uri]::new($hotfixReportHtml).AbsoluteUri))
    $logsFolder.children += (New-BookmarkUrlNode -Name ("myTech.Today/myTech.Today/Logs/[$appInstallerLog]")       -Url ('file:///' + ($appInstallerLog    -replace '\\','/')))
    $logsFolder.children += (New-BookmarkUrlNode -Name ("myTech.Today/myTech.Today/Logs/[$wingetUpdateLog]")       -Url ('file:///' + ($wingetUpdateLog    -replace '\\','/')))
    $logsFolder.children += (New-BookmarkUrlNode -Name ("myTech.Today/myTech.Today/Logs/[$appInstallerGuiLog]")    -Url ('file:///' + ($appInstallerGuiLog -replace '\\','/')))
    $logsFolder.children += (New-BookmarkUrlNode -Name ("myTech.Today/myTech.Today/Logs/[$bookmarksLog]")          -Url ('file:///' + ($bookmarksLog       -replace '\\','/')))
    $logsFolder.children += (New-BookmarkUrlNode -Name ("myTech.Today/myTech.Today/Logs/[$hostsLog]")              -Url ('file:///' + ($hostsLog           -replace '\\','/')))
    $logsFolder.children += (New-BookmarkUrlNode -Name ("myTech.Today/myTech.Today/Logs/[$restorePointsLog]")      -Url ('file:///' + ($restorePointsLog   -replace '\\','/')))
    $logsFolder.children += (New-BookmarkUrlNode -Name ("myTech.Today/myTech.Today/Logs/[$OOShutUpLog]")           -Url ('file:///' + ($OOShutUpLog        -replace '\\','/')))
    $logsFolder.children += (New-BookmarkUrlNode -Name ("myTech.Today/myTech.Today/Logs/[$ResponsiveLog]")         -Url ('file:///' + ($ResponsiveLog      -replace '\\','/')))

    $localFolder.children += $logsFolder
    $localFolder.children += (New-BookmarkUrlNode -Name 'Reports' -Url (Convert-ToFileUrl (Join-Path $base 'reports')))
    $localFolder.children += (New-BookmarkUrlNode -Name 'Config'  -Url (Convert-ToFileUrl (Join-Path $base 'config')))
    $root.children += $localFolder

    $root
}

function Get-ChromiumBookmarkFile {
    param([string]$Browser)

    switch ($Browser) {
        'Chrome' {
            Join-Path $env:LOCALAPPDATA 'Google\Chrome\User Data\Default\Bookmarks'
        }
        'Edge' {
            Join-Path $env:LOCALAPPDATA 'Microsoft\Edge\User Data\Default\Bookmarks'
        }
        default { $null }
    }
}
function Get-ChromiumProfilePaths {
    param(
        [string]$Browser
    )

    $root = $null
    $singleFileRoot = $false

    switch ($Browser) {
        'Chrome' {
            $root = Join-Path $env:LOCALAPPDATA 'Google\Chrome\User Data'
        }
        'Edge' {
            $root = Join-Path $env:LOCALAPPDATA 'Microsoft\Edge\User Data'
        }
        'Brave' {
            $root = Join-Path $env:LOCALAPPDATA 'BraveSoftware\Brave-Browser\User Data'
        }
        'Vivaldi' {
            $root = Join-Path $env:LOCALAPPDATA 'Vivaldi\User Data'
        }
        'Chromium' {
            $root = Join-Path $env:LOCALAPPDATA 'Chromium\User Data'
        }
        'UngoogledChromium' {
            # Most Windows builds of Ungoogled Chromium reuse the Chromium profile location
            $root = Join-Path $env:LOCALAPPDATA 'Chromium\User Data'
        }
        'Opera' {
            # Opera stores bookmarks under the "Opera Stable" profile folder
            $root = Join-Path $env:APPDATA 'Opera Software\Opera Stable'
            $singleFileRoot = $true
        }
        'OperaGX' {
            # Opera GX stores bookmarks under the "Opera GX Stable" profile folder
            $root = Join-Path $env:APPDATA 'Opera Software\Opera GX Stable'
            $singleFileRoot = $true
        }
        default {
            return @()
        }
    }

    if (-not (Test-Path $root)) { return @() }

    if ($singleFileRoot) {
        $bookmarksPath = Join-Path $root 'Bookmarks'
        if (Test-Path $bookmarksPath) {
            return ,([PSCustomObject]@{
                ProfileName   = 'Default'
                BookmarksPath = $bookmarksPath
            })
        }
        return @()
    }

    Get-ChildItem -Path $root -Directory | ForEach-Object {
        $bookmarksPath = Join-Path $_.FullName 'Bookmarks'
        if (Test-Path $bookmarksPath) {
            [PSCustomObject]@{
                ProfileName   = $_.Name
                BookmarksPath = $bookmarksPath
            }
        }
    }
}

function Get-FirefoxProfilePaths {
    param(
        [string]$Browser
    )

    switch ($Browser) {
        'Firefox' {
            $profilesRoot = Join-Path $env:APPDATA 'Mozilla\Firefox\Profiles'
        }
        'LibreWolf' {
            $profilesRoot = Join-Path $env:APPDATA 'LibreWolf\Profiles'
        }
        'Waterfox' {
            $profilesRoot = Join-Path $env:APPDATA 'Waterfox\Profiles'
        }
        'PaleMoon' {
            $profilesRoot = Join-Path $env:APPDATA 'Moonchild Productions\Pale Moon\Profiles'
        }
        'TorBrowser' {
            # Tor Browser stores profile data under the TorBrowser Data\Browser folder
            $profilesRoot = Join-Path $env:APPDATA 'Tor Browser\Browser\TorBrowser\Data\Browser'
        }
        default {
            return @()
        }
    }

    if (-not (Test-Path $profilesRoot)) { return @() }

    Get-ChildItem -Path $profilesRoot -Directory | ForEach-Object {
        $placesPath = Join-Path $_.FullName 'places.sqlite'
        if (Test-Path $placesPath) {
            [PSCustomObject]@{
                ProfileName = $_.Name
                PlacesPath  = $placesPath
            }
        }
    }
}

function Backup-FirefoxBookmarks {
    param(
        [string]$Browser,
        [string]$ProfileName,
        [string]$PlacesPath
    )

    if (-not (Test-Path $PlacesPath)) { return }

    $backupRoot = Join-Path $env:USERPROFILE "myTech.Today\Backups\$Browser"
    if (-not (Test-Path $backupRoot)) {
        New-Item -ItemType Directory -Path $backupRoot -Force | Out-Null
    }

    $timestamp = Get-Date -Format 'yyyyMMdd_HHmmss'
    $fileName = "places_${ProfileName}_$timestamp.sqlite"
    $backupPath = Join-Path $backupRoot $fileName
    Copy-Item -Path $PlacesPath -Destination $backupPath -Force
    Write-Log "Backup created for $Browser profile '$ProfileName' at $backupPath" -Level INFO
}


function Restore-FirefoxBookmarksFromBackup {
    param(
        [string]$Browser,
        [string]$BackupPath,
        [switch]$WhatIf
    )

    if (-not $BackupPath) {
        Write-Log "Restore mode requires -BackupPath pointing to a Firefox places.sqlite backup file." -Level ERROR `
            -Context "Attempting to restore $Browser bookmarks from backup" `
            -Solution "Specify the -BackupPath parameter with a valid path to a places.sqlite backup file created by this script (e.g., places_profilename_20251201_120000.sqlite)" `
            -Component "Bookmark Restore"
        return
    }

    if (-not (Test-Path $BackupPath)) {
        Write-Log "Backup file not found at $BackupPath" -Level ERROR `
            -Context "Attempting to restore $Browser bookmarks from backup file" `
            -Solution "Verify the backup file path is correct. Check %USERPROFILE%\myTech.Today\Backups\$Browser\ for available backup files." `
            -Component "Bookmark Restore"
        return
    }

    $profiles = Get-FirefoxProfilePaths -Browser $Browser
    if (-not $profiles -or $profiles.Count -eq 0) {
        Write-Log "No $Browser profiles with bookmark databases found; cannot restore from backup." -Level WARNING `
            -Context "Looking for $Browser profile to restore bookmarks into" `
            -Solution "Install $Browser browser first, then run the restore command again. Profile data is expected in %APPDATA%\Mozilla\Firefox\Profiles\ or equivalent." `
            -Component "Bookmark Restore"
        return
    }

    $targetProfile = $null
    $profileNameHint = $null
    $fileName = [IO.Path]::GetFileNameWithoutExtension($BackupPath)
    if ($fileName -like 'places_*_*') {
        $lastUnderscore = $fileName.LastIndexOf('_')
        if ($lastUnderscore -gt 7) {
            $profileNameHint = $fileName.Substring(7, $lastUnderscore - 7)
        }
    }

    if ($profileNameHint) {
        $targetProfile = $profiles | Where-Object { $_.ProfileName -eq $profileNameHint } | Select-Object -First 1
    }
    if (-not $targetProfile) {
        $targetProfile = $profiles | Where-Object { $_.ProfileName -like '*.default-release' } | Select-Object -First 1
    }
    if (-not $targetProfile) {
        $targetProfile = $profiles | Select-Object -First 1
    }

    $targetPath = $targetProfile.PlacesPath

    if ($WhatIf) {
        Write-Log "WhatIf: would restore $Browser profile '$($targetProfile.ProfileName)' bookmarks database from $BackupPath to $targetPath" -Level INFO
        return
    }

    # Backup current database before overwriting
    Backup-FirefoxBookmarks -Browser $Browser -ProfileName $targetProfile.ProfileName -PlacesPath $targetPath

    try {
        Copy-Item -Path $BackupPath -Destination $targetPath -Force
        Write-Log "Restored bookmarks database for $Browser profile '$($targetProfile.ProfileName)' from $BackupPath" -Level SUCCESS
    }
    catch {
        Write-Log ("Failed to restore {0} profile '{1}' from {2}: {3}" -f $Browser, $targetProfile.ProfileName, $BackupPath, $_) -Level ERROR
    }
}

function Export-FirefoxMyTechTodayHtml {
    param(
        [string[]]$Categories,
        [string]$BrowserName = 'Firefox',
        [switch]$WhatIf
    )

    $rootNode = New-MyTechTodayFolder -Categories $Categories

    function Convert-NodeToHtml {
        param(
            $Node,
            [string]$Indent = '    '
        )

        if ($Node.type -eq 'folder') {
            $html = @()
            $html += "$Indent<DT><H3>$($Node.name)</H3>"
            $html += "$Indent<DL><p>"
            foreach ($child in $Node.children) {
                $html += Convert-NodeToHtml -Node $child -Indent ("$Indent    ")
            }
            $html += "$Indent</DL><p>"
            return $html
        }
        elseif ($Node.type -eq 'url') {
            return ($Indent + '<DT><A HREF="' + $Node.url + '">' + $Node.name + '</A>')
        }
    }

    $lines = @()
    $lines += '<!DOCTYPE NETSCAPE-Bookmark-file-1>'
    $lines += '<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=UTF-8">'
    $lines += '<TITLE>myTech.Today Bookmarks</TITLE>'
    $lines += '<H1>myTech.Today Bookmarks</H1>'
    $lines += '<DL><p>'
    $lines += Convert-NodeToHtml -Node $rootNode -Indent '    '
    $lines += '</DL><p>'

    $browserDir = Join-Path $env:USERPROFILE ("myTech.Today\Backups\$BrowserName")
    $outFile = Join-Path $browserDir 'myTech.Today-bookmarks.html'

    if ($WhatIf) {
        Write-Log "WhatIf: would create $BrowserName import file at $outFile" -Level INFO
        return
    }

    if (-not (Test-Path $browserDir)) {
        New-Item -ItemType Directory -Path $browserDir -Force | Out-Null
    }

    Set-Content -Path $outFile -Value $lines -Encoding UTF8
    Write-Log "$BrowserName import file created at $outFile. Import via the browser's bookmarks/library UI using 'Import Bookmarks from HTML'." -Level INFO
}





function Backup-BookmarkFile {
    param(
        [string]$Browser,
        [string]$Path
    )

    if (-not (Test-Path $Path)) { return }

    $backupRoot = Join-Path $env:USERPROFILE 'myTech.Today\Backups'
    $browserDir = Join-Path $backupRoot $Browser

    if (-not (Test-Path $browserDir)) {
        New-Item -ItemType Directory -Path $browserDir -Force | Out-Null
    }

    $timestamp = Get-Date -Format 'yyyyMMdd_HHmmss'
    $backupFile = Join-Path $browserDir ("Bookmarks_$timestamp.json")
    Copy-Item -Path $Path -Destination $backupFile -Force
    Write-Log "Backup created for $Browser at $backupFile" -Level INFO
}

function Restore-ChromiumBookmarksFromBackup {
    param(
        [string]$Browser,
        [string]$BackupPath,
        [switch]$WhatIf
    )

    if (-not $BackupPath) {
        Write-Log "Restore mode requires -BackupPath pointing to a JSON backup file." -Level ERROR `
            -Context "Attempting to restore $Browser bookmarks from backup" `
            -Solution "Specify the -BackupPath parameter with a valid path to a JSON backup file created by this script (e.g., Bookmarks_20251201_120000.json)" `
            -Component "Bookmark Restore"
        return
    }

    if (-not (Test-Path $BackupPath)) {
        Write-Log "Backup file not found at $BackupPath" -Level ERROR `
            -Context "Attempting to restore $Browser bookmarks from backup file" `
            -Solution "Verify the backup file path is correct. Check %USERPROFILE%\myTech.Today\Backups\$Browser\ for available backup files." `
            -Component "Bookmark Restore"
        return
    }

    $profiles = Get-ChromiumProfilePaths -Browser $Browser
    if (-not $profiles -or $profiles.Count -eq 0) {
        Write-Log "No $Browser profiles with bookmarks found; cannot restore from backup." -Level WARNING `
            -Context "Looking for $Browser profile to restore bookmarks into" `
            -Solution "Install $Browser browser first, then run the restore command again. Profile data is expected in %LOCALAPPDATA%\Google\Chrome\User Data\ or equivalent." `
            -Component "Bookmark Restore"
        return
    }

    # Prefer the 'Default' profile if present; otherwise use the first profile discovered.
    $targetProfile = $profiles | Where-Object { $_.ProfileName -eq 'Default' } | Select-Object -First 1
    if (-not $targetProfile) {
        $targetProfile = $profiles | Select-Object -First 1
    }

    $targetPath = $targetProfile.BookmarksPath

    if ($WhatIf) {
        Write-Log "WhatIf: would restore $Browser profile '$($targetProfile.ProfileName)' bookmarks from $BackupPath to $targetPath" -Level INFO
        return
    }

    # Backup current bookmarks before overwriting
    Backup-BookmarkFile -Browser "$Browser-$($targetProfile.ProfileName)" -Path $targetPath

    $backupContent = Get-Content $BackupPath -Raw

    try {
        # Basic validation that the file is JSON
        $null = $backupContent | ConvertFrom-Json
    }
    catch {
        Write-Log "Backup file at $BackupPath is not valid JSON: $_" -Level ERROR `
            -Context "Validating backup file format before restoring $Browser bookmarks" `
            -Solution "The backup file appears to be corrupted or in the wrong format. Try a different backup file from %USERPROFILE%\myTech.Today\Backups\$Browser\ or re-create a backup by running the script in Add mode first." `
            -Component "Bookmark Restore"
        return
    }

    Set-Content -Path $targetPath -Value $backupContent -Encoding UTF8
    Write-Log "Restored bookmarks for $Browser profile '$($targetProfile.ProfileName)' from $BackupPath" -Level SUCCESS
}

function Update-ChromiumBookmarks {
    param(
        [string]$Browser,
        [string]$Mode,
        [string[]]$Categories,
        [switch]$WhatIf,
        [string]$ProfilePath,
        [string]$ProfileName = 'Default'
    )

    $path = if ($ProfilePath) { $ProfilePath } else { Get-ChromiumBookmarkFile -Browser $Browser }
    if (-not $path -or -not (Test-Path $path)) {
        Write-Log "Bookmark file not found for $Browser profile '$ProfileName'" -Level WARNING
        return
    }

    Write-Log "Processing $Browser profile '$ProfileName' bookmarks at $path" -Level INFO

    if ($WhatIf) {
        Write-Log "WhatIf: would $Mode myTech.Today structure for $Browser profile '$ProfileName'" -Level INFO
        return
    }

    Backup-BookmarkFile -Browser "$Browser-$ProfileName" -Path $path

    try {
        $json = Get-Content $path -Raw | ConvertFrom-Json
    }
    catch {
        Write-Log "Failed to parse bookmarks file at $path for $Browser profile '$ProfileName': $_" -Level ERROR
        return
    }

    if (-not $json.roots) {
        Write-Log "Unexpected bookmark structure for $Browser profile '$ProfileName' (no roots node)" -Level WARNING
        return
    }

    # Strip any existing myTech.Today folder from common roots first so we don't accumulate duplicates
    $removedCount = 0
    $rootNames = @('bookmark_bar','other','synced')
    foreach ($rootName in $rootNames) {
        $rootNode = $json.roots.$rootName
        if ($null -eq $rootNode) { continue }

        $existingChildren = $rootNode.children
        if ($null -eq $existingChildren) { continue }

        $originalChildren = @($existingChildren)
        if ($originalChildren.Count -eq 0) { continue }

        $filteredChildren = $originalChildren | Where-Object { $_.name -ne 'myTech.Today' }
        $rootNode.children = @($filteredChildren)
        $removedCount += ($originalChildren.Count - $rootNode.children.Count)
    }

    if ($Mode -eq 'Add') {
        if (-not $json.roots.bookmark_bar) {
            Write-Log "bookmark_bar not found in $Browser profile '$ProfileName' bookmarks; cannot add myTech.Today folder" -Level WARNING
            return
        }

        $children = @($json.roots.bookmark_bar.children)
        $node = New-MyTechTodayFolder -Categories $Categories
        $json.roots.bookmark_bar.children = @($node) + $children

        if ($removedCount -gt 0) {
            Write-Log "Replaced existing myTech.Today folder(s) ($removedCount instance(s)) for $Browser profile '$ProfileName'" -Level INFO
        }
        Write-Log "Added myTech.Today folder for $Browser profile '$ProfileName'" -Level SUCCESS
    }
    else {
        if ($removedCount -gt 0) {
            Write-Log "Removed myTech.Today folder ($removedCount instance(s)) for $Browser profile '$ProfileName'" -Level SUCCESS
        }
        else {
            Write-Log "myTech.Today folder not found for $Browser profile '$ProfileName'; nothing to remove" -Level INFO
        }
    }

    $json | ConvertTo-Json -Depth 100 | Set-Content -Path $path -Encoding UTF8
}

# Initialize favicon cache from disk (speeds up subsequent runs)
if (-not $script:SkipFavicons) {
    Initialize-FaviconCache
}

# Load curated bookmarks first so we can extract categories from it
$script:CuratedBookmarks = $null
Initialize-CuratedBookmarks -Path $CuratedLinksPath

# Load external data sources (e.g., europe.ps1, asia.psd1) and merge into curated bookmarks
Load-ExternalDataSources

# Get categories from installer
$categories = Get-InstallerCategories
if (-not $categories -or $categories.Count -eq 0) {
    $categories = @('Browsers','Development','Productivity','Media','Utilities','Security','Communication','Cloud Storage','Gaming','Education','Finance','Remote Access','Maintenance','Shortcuts')
    Write-Log "Using fallback category list" -Level WARNING
}

# Merge in any additional categories from curated bookmarks
# This ensures all categories defined in links-sample.psd1 are included
if ($script:CuratedBookmarks -is [hashtable]) {
    foreach ($curatedCategory in $script:CuratedBookmarks.Keys) {
        if ($categories -notcontains $curatedCategory) {
            $categories += $curatedCategory
            Write-Log "Added category '$curatedCategory' from curated bookmarks" -Level INFO
        }
    }
}

$chromiumBrowsers = @('Chrome','Edge','Brave','Vivaldi','Opera','OperaGX','Chromium','UngoogledChromium')
$firefoxProfileBrowsers = @('Firefox','LibreWolf','TorBrowser','Waterfox','PaleMoon')
$htmlOnlyBrowsers = @('Midori','Min')

if ($Mode -eq 'Restore') {
    # Restore mode supports Chromium-based browsers (JSON backups) and Firefox-family browsers (SQLite backups).
    if ($Browser -contains 'All') {
        $ext = if ($BackupPath) { [IO.Path]::GetExtension($BackupPath) } else { $null }
        if ($ext) { $ext = $ext.ToLowerInvariant() }

        $parentBrowser = $null
        if ($BackupPath) {
            $parentDir = Split-Path -Path $BackupPath -Parent
            if ($parentDir) {
                $parentBrowser = Split-Path -Path $parentDir -Leaf
            }
        }

        switch ($ext) {
            '.json' {
                if ($parentBrowser -and ($chromiumBrowsers -contains $parentBrowser)) {
                    $browsersToProcess = @($parentBrowser)
                }
                else {
                    $browsersToProcess = $chromiumBrowsers
                }
            }
            '.sqlite' {
                if ($parentBrowser -and ($firefoxProfileBrowsers -contains $parentBrowser)) {
                    $browsersToProcess = @($parentBrowser)
                }
                else {
                    $browsersToProcess = $firefoxProfileBrowsers
                }
            }
            default {
                $browsersToProcess = $chromiumBrowsers + $firefoxProfileBrowsers
            }
        }
    }
    else {
        $browsersToProcess = $Browser
    }

    foreach ($b in $browsersToProcess | Sort-Object -Unique) {
        if ($chromiumBrowsers -contains $b) {
            Restore-ChromiumBookmarksFromBackup -Browser $b -BackupPath $BackupPath -WhatIf:$WhatIf
        }
        elseif ($firefoxProfileBrowsers -contains $b) {
            Restore-FirefoxBookmarksFromBackup -Browser $b -BackupPath $BackupPath -WhatIf:$WhatIf
        }
        else {
            Write-Log "Restore mode currently supports Chromium and Firefox-family browsers; skipping $b." -Level WARNING
        }
    }
}
else {
    $browsersToProcess = if ($Browser -contains 'All') { $chromiumBrowsers + $firefoxProfileBrowsers + $htmlOnlyBrowsers } else { $Browser }

    foreach ($b in $browsersToProcess | Sort-Object -Unique) {
        if ($chromiumBrowsers -contains $b) {
            $profiles = Get-ChromiumProfilePaths -Browser $b

            if (-not $profiles -or $profiles.Count -eq 0) {
                # Fallback: try the default profile location for browsers where we know it
                $fallbackPath = Get-ChromiumBookmarkFile -Browser $b
                if ($fallbackPath -and (Test-Path $fallbackPath)) {
                    Write-Log "No explicit $b profiles discovered; falling back to default profile at $fallbackPath" -Level INFO
                    Update-ChromiumBookmarks -Browser $b -Mode $Mode -Categories $categories -WhatIf:$WhatIf -ProfilePath $fallbackPath -ProfileName 'Default'
                    continue
                }

                Write-Log "No $b profiles with bookmarks found" -Level WARNING `
                    -Context "Scanning for $b browser profiles containing Bookmarks file" `
                    -Solution "Install $b browser, or verify that $b user data exists in AppData. For Chromium-based browsers, check %LOCALAPPDATA%\<BrowserName>\User Data\" `
                    -Component "Browser Profile Detection"
                continue
            }

            foreach ($p in $profiles) {
                Update-ChromiumBookmarks -Browser $b -Mode $Mode -Categories $categories -WhatIf:$WhatIf -ProfilePath $p.BookmarksPath -ProfileName $p.ProfileName
            }
        }
        elseif ($firefoxProfileBrowsers -contains $b) {
            $profiles = Get-FirefoxProfilePaths -Browser $b
            if (-not $profiles -or $profiles.Count -eq 0) {
                Write-Log "$b profiles not found; skipping $b" -Level WARNING `
                    -Context "Scanning for $b browser profiles containing places.sqlite database" `
                    -Solution "Install $b browser, or verify that $b profile data exists. For Firefox-family browsers, check %APPDATA%\Mozilla\Firefox\Profiles\ or equivalent. An HTML import file will be generated as a fallback." `
                    -Component "Browser Profile Detection"
                if ($Mode -eq 'Add') {
                    Export-FirefoxMyTechTodayHtml -Categories $categories -BrowserName $b -WhatIf:$WhatIf
                }
                continue
            }

            if ($WhatIf) {
                foreach ($p in $profiles) {
                    Write-Log "WhatIf: would backup $b profile '$($p.ProfileName)' database from $($p.PlacesPath)" -Level INFO
                }
                Export-FirefoxMyTechTodayHtml -Categories $categories -BrowserName $b -WhatIf
                continue
            }

            foreach ($p in $profiles) {
                Backup-FirefoxBookmarks -Browser $b -ProfileName $p.ProfileName -PlacesPath $p.PlacesPath
            }

            if ($Mode -eq 'Add') {
                Export-FirefoxMyTechTodayHtml -Categories $categories -BrowserName $b
            }
            else {
                Write-Log "To remove myTech.Today bookmarks from $b, delete the folder manually from the bookmarks/library UI." -Level WARNING
            }
        }
        elseif ($htmlOnlyBrowsers -contains $b) {
            $targetDir = Join-Path $env:USERPROFILE ("myTech.Today\Backups\$b")
            $outFile = Join-Path $targetDir 'myTech.Today-bookmarks.html'

            if ($WhatIf) {
                Write-Log "WhatIf: would create $b import file at $outFile" -Level INFO
                continue
            }

            if ($Mode -eq 'Add') {
                Export-FirefoxMyTechTodayHtml -Categories $categories -BrowserName $b
            }
            else {
                Write-Log "To remove myTech.Today bookmarks from $b, delete the folder manually from the bookmarks UI." -Level WARNING
            }
        }
        else {
            Write-Log "Browser '$b' is not currently handled by this script." -Level WARNING
        }
    }
}

# Save favicon cache for future sessions (if we fetched any favicons)
if (-not $script:SkipFavicons -and $script:FaviconCache.Count -gt 0) {
    Save-FaviconCache
}

Write-Log "=== Bookmarks Manager completed (Mode=$Mode) ===" -Level SUCCESS
