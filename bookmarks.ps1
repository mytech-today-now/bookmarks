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
    Version : 1.3.1
    Script  : bookmarks.ps1
    Project : myTech.Today PowerShellScripts
    Author  : Kyle Rode (myTech.Today)
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

    [switch]$WhatIf
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
$logPath = Initialize-Log -ScriptName "Bookmarks-Manager" -ScriptVersion "1.2.0"
Write-Log "=== Bookmarks Manager started (Mode=$Mode) ===" -Level INFO

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

$script:MaxDomainOccurrences = 10
$script:DomainExemptions = @(
    'google.com',
    'duckduckgo.com',
    'bing.com',
    'search.brave.com',
    'ecosia.org',
    'startpage.com'
)

function Get-DomainFromUrl {
    param(
        [string]$Url
    )

    if ([string]::IsNullOrWhiteSpace($Url)) {
        return $null
    }

    try {
        $uri  = [Uri]$Url
        $host = $uri.Host.ToLowerInvariant()

        if ($host.StartsWith('www.')) {
            $host = $host.Substring(4)
        }

        return $host
    }
    catch {
        return $null
    }
}

function New-LimitedSearchBookmarkNode {
    param(
        [string]$Name,
        [string]$Url
    )

    if (-not $script:DomainUsage) {
        $script:DomainUsage = @{}
    }
    if (-not $script:DomainUsageAll) {
        $script:DomainUsageAll = @{}
    }
    if (-not $script:MaxDomainOccurrences) {
        $script:MaxDomainOccurrences = 10
    }

    $domain = Get-DomainFromUrl -Url $Url
    if (-not $domain) {
        return (New-BookmarkUrlNode -Name $Name -Url $Url)
    }

    # Exempt core search engines from the global repetition limit, but still track usage
    if ($script:DomainExemptions -contains $domain) {
        $allCurrent = 0
        if ($script:DomainUsageAll.ContainsKey($domain)) {
            $allCurrent = [int]$script:DomainUsageAll[$domain]
        }
        $script:DomainUsageAll[$domain] = $allCurrent + 1
        return (New-BookmarkUrlNode -Name $Name -Url $Url)
    }

    $current = 0
    if ($script:DomainUsage.ContainsKey($domain)) {
        $current = [int]$script:DomainUsage[$domain]
    }

    if ($current -ge $script:MaxDomainOccurrences) {
        return $null
    }

    $script:DomainUsage[$domain] = $current + 1

    $allCurrent = 0
    if ($script:DomainUsageAll.ContainsKey($domain)) {
        $allCurrent = [int]$script:DomainUsageAll[$domain]
    }
    $script:DomainUsageAll[$domain] = $allCurrent + 1

    return (New-BookmarkUrlNode -Name $Name -Url $Url)
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
        'News'          = 'news websites'
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

function Get-TopicKeyword {
    param([string]$Category)

    if (-not $Category) { return '' }

    if ($script:TopicCategories -is [hashtable]) {
        foreach ($topicGroup in $script:TopicCategories.Values) {
            if ($topicGroup -is [hashtable] -and $topicGroup.ContainsKey($Category)) {
                return $topicGroup[$Category]
            }
        }
    }

    return $Category
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


function Get-CategoryBookmarkNodes {
    param(
        [string]$Category
    )

    $year = (Get-Date).Year

    # 1. Try curated data from external hashtable (e.g., links-sample.psd1/ps1)
    #    Curated data is organized as: Category → Subfolder → Bookmarks
    #    Each subfolder becomes a child folder under the category
    if ($script:CuratedBookmarks -is [hashtable] -and $script:CuratedBookmarks.ContainsKey($Category)) {
        $categoryTable = $script:CuratedBookmarks[$Category]
        if ($categoryTable -is [hashtable]) {
            $curatedNodes = @()

            foreach ($subfolderName in $categoryTable.Keys) {
                $bookmarkGroup = $categoryTable[$subfolderName]
                if (-not $bookmarkGroup) { continue }

                $subfolderChildren = @()

                foreach ($bookmark in $bookmarkGroup) {
                    if (-not $bookmark) { continue }

                    $title = $bookmark.Title
                    $url   = $bookmark.URL
                    $icon  = $bookmark.Icon

                    if ($null -eq $title -or $null -eq $url) { continue }

                    # Replace explicit year placeholder (for example, 2025 -> current year)
                    $title = $title -replace '\b2025\b', $year.ToString()
                    $url   = $url   -replace '\b2025\b', $year.ToString()

                    # Expand environment variables in URL (e.g., %USERNAME%, %USERPROFILE%)
                    $url = [Environment]::ExpandEnvironmentVariables($url)

                    # Create bookmark node with icon if available
                    if ($icon) {
                        $subfolderChildren += New-BookmarkUrlNode -Name $title -Url $url -Icon $icon
                    }
                    else {
                        $subfolderChildren += New-BookmarkUrlNode -Name $title -Url $url
                    }
                }

                # Create subfolder using the helper function
                $subfolder = New-BookmarkSubfolder -Name $subfolderName -Children $subfolderChildren
                if ($null -ne $subfolder) {
                    $curatedNodes += $subfolder
                }
            }

            if ($curatedNodes.Count -gt 0) {
                Write-Log "Using curated bookmarks for category '$Category'." -Level INFO
                return $curatedNodes
            }
        }
    }

    # 2. Fallback: abstracted search-based links that mirror the curated link types,
    #    organized into subfolders for easier browsing.
    #    Each subfolder represents a category of information (news, reviews, tutorials, etc.)
    $keyword = Get-TopicKeyword -Category $Category
    $encoded = ($keyword -replace '\s+', '+')
    $slug    = ($keyword -replace '\s+', '_')

    # Define bookmark subfolders with their respective links
    # Each subfolder will be created as a child folder under the category
    $subfolderDefinitions = @(
        @{
            Name = 'News and updates'
            Bookmarks = @(
                @{ Name = "$Category overview (Wikipedia)"; Url = "https://en.wikipedia.org/wiki/$slug" }
                @{ Name = "$Category news and updates ($year, overview articles)"; Url = "https://www.google.com/search?q=$encoded+$year+news+updates" }
                @{ Name = "$Category news and updates (community discussions)"; Url = "https://www.reddit.com/search/?q=$encoded+$year+news" }
            )
        },
        @{
            Name = 'Aggregators and comparisons'
            Bookmarks = @(
                @{ Name = "$Category round-ups (best of $year lists)"; Url = "https://www.google.com/search?q=$encoded+best+tools+$year" }
                @{ Name = "$Category comparison guides ($year)"; Url = "https://www.google.com/search?q=$encoded+comparison+guide+$year" }
                @{ Name = "$Category list posts (top $year overviews)"; Url = "https://www.google.com/search?q=$encoded+top+$year+overview" }
            )
        },
        @{
            Name = 'Ratings and reviews'
            Bookmarks = @(
                @{ Name = "$Category reviews ($year)"; Url = "https://www.google.com/search?q=$encoded+reviews+$year" }
                @{ Name = "$Category ratings and rankings"; Url = "https://www.google.com/search?q=$encoded+ratings+rankings+$year" }
                @{ Name = "$Category user review round-ups"; Url = "https://www.google.com/search?q=$encoded+user+reviews+$year" }
            )
        },
        @{
            Name = 'Statistics and usage'
            Bookmarks = @(
                @{ Name = "$Category usage statistics"; Url = "https://www.google.com/search?q=$encoded+usage+statistics+$year" }
                @{ Name = "$Category market share statistics"; Url = "https://www.google.com/search?q=$encoded+market+share+$year" }
                @{ Name = "$Category industry reports"; Url = "https://www.google.com/search?q=$encoded+industry+report+$year" }
            )
        },
        @{
            Name = 'Videos'
            Bookmarks = @(
                @{ Name = "$Category overview videos ($year)"; Url = "https://www.youtube.com/results?search_query=$encoded+overview+$year" }
                @{ Name = "$Category tutorials (video)"; Url = "https://www.youtube.com/results?search_query=$encoded+tutorial+$year" }
                @{ Name = "$Category best tools in $year (video)"; Url = "https://www.youtube.com/results?search_query=$encoded+best+tools+$year" }
            )
        },
        @{
            Name = 'How-tos and guides'
            Bookmarks = @(
                @{ Name = "$Category getting started guides"; Url = "https://www.google.com/search?q=$encoded+getting+started+guide" }
                @{ Name = "$Category step-by-step tutorials"; Url = "https://www.google.com/search?q=$encoded+step+by+step+tutorial" }
                @{ Name = "$Category troubleshooting guides"; Url = "https://www.google.com/search?q=$encoded+troubleshooting" }
            )
        },
        @{
            Name = 'Resources and documentation'
            Bookmarks = @(
                @{ Name = "$Category official documentation"; Url = "https://www.google.com/search?q=$encoded+official+documentation" }
                @{ Name = "$Category curated resources"; Url = "https://www.google.com/search?q=$encoded+resources" }
                @{ Name = "$Category best practices"; Url = "https://www.google.com/search?q=$encoded+best+practices" }
            )
        },
        @{
            Name = 'Search engines'
            Bookmarks = @(
                @{ Name = "$Category results (Google)"; Url = "https://www.google.com/search?q=$encoded" }
                @{ Name = "$Category results (DuckDuckGo)"; Url = "https://duckduckgo.com/?q=$encoded" }
                @{ Name = "$Category results (Bing)"; Url = "https://www.bing.com/search?q=$encoded" }
                @{ Name = "$Category results (Brave Search)"; Url = "https://search.brave.com/search?q=$encoded" }
                @{ Name = "$Category results (Ecosia)"; Url = "https://www.ecosia.org/search?q=$encoded" }
                @{ Name = "$Category results (Startpage)"; Url = "https://www.startpage.com/do/dsearch?query=$encoded" }
                @{ Name = "Search tools directory (myTech.Today - Tools 2025)"; Url = "https://mytech.today/tools-2025/#search-engines" }
                @{ Name = "Google search operators (complete list)"; Url = "https://www.imarketingonly.com/google-search-operators-the-complete-list-42-advanced-operators/" }
                @{ Name = "DuckDuckGo !bang reference"; Url = "https://duckduckgo.com/bang" }
                @{ Name = "Internet Archive - Wayback Machine"; Url = "https://web.archive.org/" }
                @{ Name = "Archive.is - single-page snapshots"; Url = "https://archive.is/" }
            )
        }
    )

    # Build bookmark subfolders from the definitions
    $nodes = @()
    foreach ($subfolderDef in $subfolderDefinitions) {
        $subfolderChildren = @()

        foreach ($bookmark in $subfolderDef.Bookmarks) {
            $node = New-LimitedSearchBookmarkNode -Name $bookmark.Name -Url $bookmark.Url
            if ($null -ne $node) {
                $subfolderChildren += $node
            }
        }

        # Create the subfolder only if it has children
        $subfolder = New-BookmarkSubfolder -Name $subfolderDef.Name -Children $subfolderChildren
        if ($null -ne $subfolder) {
            $nodes += $subfolder
        }
    }

    return $nodes
}


function New-MyTechTodayFolder {
    param([string[]]$Categories)

    # Reset domain usage tracking for this tree build
    $script:DomainUsage    = @{}
    $script:DomainUsageAll = @{}

    $root = [PSCustomObject]@{ name = 'myTech.Today'; type = 'folder'; children = @() }

    # Root-level myTech.Today site links
    $root.children += (New-BookmarkUrlNode -Name 'myTech.Today'            -Url 'https://mytech.today/')
    $root.children += (New-BookmarkUrlNode -Name 'myTech.Today tools-2025' -Url 'https://mytech.today/tools-2025')

    # Special root-level categories that should appear directly under myTech.Today
    $rootLevelCategories = @('Media Downloading')

    foreach ($rc in $rootLevelCategories) {
        if ($Categories -contains $rc) {
            $catFolder = [PSCustomObject]@{ name = $rc; type = 'folder'; children = @() }
            $links = Get-CategoryBookmarkNodes -Category $rc
            $catFolder.children += $links
            $root.children += $catFolder
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
            $catFolder = [PSCustomObject]@{ name = $cat; type = 'folder'; children = @() }
            $links = Get-CategoryBookmarkNodes -Category $cat
            $catFolder.children += $links
            $groupFolder.children += $catFolder
        }

        $root.children += $groupFolder
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
        Write-Log "Restore mode requires -BackupPath pointing to a Firefox places.sqlite backup file." -Level ERROR
        return
    }

    if (-not (Test-Path $BackupPath)) {
        Write-Log "Backup file not found at $BackupPath" -Level ERROR
        return
    }

    $profiles = Get-FirefoxProfilePaths -Browser $Browser
    if (-not $profiles -or $profiles.Count -eq 0) {
        Write-Log "No $Browser profiles with bookmark databases found; cannot restore from backup." -Level WARNING
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

    if ($script:DomainUsageAll -and $script:DomainUsageAll.Count -gt 0) {
        $lines += '<!-- Domain usage summary (top 20 domains by bookmark count; fallback-generated links only). -->'
        $rank = 1
        $topDomains = $script:DomainUsageAll.GetEnumerator() | Sort-Object -Property Value -Descending | Select-Object -First 20
        foreach ($entry in $topDomains) {
            $lines += ("<!-- {0,2}. {1} - {2} links -->" -f $rank, $entry.Key, $entry.Value)
            $rank++
        }
        $lines += '<!-- End of domain usage summary -->'
    }

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
        Write-Log "Restore mode requires -BackupPath pointing to a JSON backup file." -Level ERROR
        return
    }

    if (-not (Test-Path $BackupPath)) {
        Write-Log "Backup file not found at $BackupPath" -Level ERROR
        return
    }

    $profiles = Get-ChromiumProfilePaths -Browser $Browser
    if (-not $profiles -or $profiles.Count -eq 0) {
        Write-Log "No $Browser profiles with bookmarks found; cannot restore from backup." -Level WARNING
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
        Write-Log "Backup file at $BackupPath is not valid JSON: $_" -Level ERROR
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

$categories = Get-InstallerCategories
if (-not $categories -or $categories.Count -eq 0) {
    $categories = @('Browsers','Development','Productivity','Media','Utilities','Security','Communication','Cloud Storage','Gaming','Education','Finance','Remote Access','Maintenance','Shortcuts')
    Write-Log "Using fallback category list" -Level WARNING
}

# Ensure Media Downloading curated bookmarks are always available as a category
if (-not ($categories -contains 'Media Downloading')) {
    $categories += 'Media Downloading'
}

$script:CuratedBookmarks = $null
Initialize-CuratedBookmarks -Path $CuratedLinksPath

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

                Write-Log "No $b profiles with bookmarks found" -Level WARNING
                continue
            }

            foreach ($p in $profiles) {
                Update-ChromiumBookmarks -Browser $b -Mode $Mode -Categories $categories -WhatIf:$WhatIf -ProfilePath $p.BookmarksPath -ProfileName $p.ProfileName
            }
        }
        elseif ($firefoxProfileBrowsers -contains $b) {
            $profiles = Get-FirefoxProfilePaths -Browser $b
            if (-not $profiles -or $profiles.Count -eq 0) {
                Write-Log "$b profiles not found; skipping $b" -Level WARNING
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

Write-Log "=== Bookmarks Manager completed (Mode=$Mode) ===" -Level SUCCESS

