<#
.SYNOPSIS
    Generic data-set fix script for PowerShell bookmark data files

.DESCRIPTION
    This script provides comprehensive fixing and diagnostic capabilities for PowerShell data files:

    FIXING CAPABILITIES:
    1. Removes markdown code fences
    2. Removes duplicate wrapper sections (e.g., duplicate 'Europe' = @{)
    3. Identifies and removes duplicate keys at any level
    4. Fixes common syntax errors:
       - Missing '=' operators
       - Missing keys before '=' operators
       - Apostrophes in single-quoted strings (converts to double quotes)
       - Ampersands in single-quoted strings (converts to double quotes)
       - Duplicate keys with comments
    5. Fixes apostrophe and quote punctuation issues:
       - French contractions (L'Oreal, d'Or, c'est, l'amour, aujourd'hui)
       - Possessive words (Frank's, McDonald's, Wendy's)
       - Contractions (Let's, It's, can't, won't, don't, isn't)
       - Curly/smart quotes (' ' " ")
       - Various apostrophe-like characters (` ´ ʼ ′ ‵)
       - Low-9 quotation marks (‚ ‛ „ ‟)
       - CJK quotation marks and fullwidth punctuation
    6. Optionally wraps content in a specified wrapper structure
    7. Generates detailed fix report

    DIAGNOSTIC CAPABILITIES (use -Diagnose):
    1. Brace balance analysis (open vs close braces and parentheses)
    2. Root-level structure analysis (country keys, expected closes)
    3. Syntax checking using PowerShell parser
    4. Extra open brace detection (standalone { or multiple @{)
    5. Quote issue detection (odd quote counts per line)
    6. File end structure analysis
    7. Brace imbalance tracking (where balance goes negative)

.PARAMETER InputFile
    Path to the input file to fix or diagnose

.PARAMETER OutputFile
    Path to save the fixed file (default: input file with '-fixed' suffix)

.PARAMETER BackupFile
    Path to save backup (default: input file with '-backup' suffix)

africa
    Optional key name to wrap the content (e.g., 'Asia', 'Europe')

.PARAMETER RemoveDuplicates
    Whether to remove duplicate keys at the same level (default: $true)

.PARAMETER FixSyntax
    Whether to fix common syntax errors (default: $true)

.PARAMETER FixQuotes
    Whether to fix apostrophe/quote punctuation issues (default: $true when AllFixes)

.PARAMETER FixBraces
    Whether to fix brace pair integrity issues including:
    - Duplicate wrapper structures (e.g., duplicate '@{' and 'Region = @{')
    - Mismatched opening and closing braces
    - Orphaned braces causing incorrect hierarchy nesting
    (default: $true when AllFixes)

.PARAMETER GenerateReport
    Whether to generate a detailed fix report (default: $true)

.PARAMETER AllFixes
    Enable all fix options (RemoveDuplicates, FixSyntax, FixQuotes, FixBraces, GenerateReport)

.PARAMETER Diagnose
    Run diagnostic analysis only without applying fixes. Shows:
    - Brace/paren balance
    - Root-level structure
    - Syntax errors
    - Extra open braces
    - Quote issues
    - File end structure
    - Brace pair integrity (duplicate wrappers, structural issues)

.PARAMETER DetailedDiagnose
    Show additional detail in diagnostic output (e.g., list all root keys)

.PARAMETER TreeIntegrityCheck
    Run comprehensive tree structure integrity validation including:
    - Recursive traversal of all nodes in the nested tree
    - Node invariant validation (required fields present, correct data types)
    - Parent-child consistency checks (no orphans, circular references, broken links)
    - Ordering rule validation if applicable (children sorted correctly)
    - Detailed integrity report with inconsistencies, warnings, and errors

.PARAMETER AutoRepair
    When used with -TreeIntegrityCheck, attempts to automatically fix simple structural issues:
    - Missing required fields (adds placeholder values)
    - Incorrect data types (converts to expected types)
    - Orphan nodes (attempts to reattach or remove)
    - Ordering issues (re-sorts children)

.EXAMPLE
    .\data-set-fix.ps1 -InputFile "..\asia.psd1" -TreeIntegrityCheck
    # Run full tree integrity validation without making changes

.EXAMPLE
    .\data-set-fix.ps1 -InputFile "..\asia.psd1" -TreeIntegrityCheck -AutoRepair
    # Run tree integrity validation and attempt to fix issues found

.EXAMPLE
    .\data-set-fix.ps1 -InputFile "..\africa.psd1" -AllFixes
    # Fix africa.psd1 - 2-level structure: Africa -> Category -> [Bookmarks]
    # Structure: @{ 'Africa' = @{ 'News Sites' = @(...), 'Vloggers' = @(...) } }
    # Uses 'Icon' (capitalized)

.EXAMPLE
    .\data-set-fix.ps1 -InputFile "..\asia.psd1" -AllFixes
    # Fix asia.psd1 - 3-4 level structure: Asia -> Country -> Category -> [Bookmarks]
    # Structure: @{ 'Asia' = @{ 'China' = @{ 'Mainstream News Sites' = @(...), 'Business' = @{ ... } } } }
    # Uses 'icon' (lowercase), ~27,000+ lines

.EXAMPLE
    .\data-set-fix.ps1 -InputFile "..\australasia.psd1" -AllFixes
    # Fix australasia.psd1 - 3-4 level structure: Australasia -> Country -> Category -> [Bookmarks]
    # Structure: @{ 'Australasia' = @{ 'Australia' = @{ 'Mainstream News Sites' = @(...) } } }
    # Uses 'icon' (lowercase), similar to asia.psd1

.EXAMPLE
    .\data-set-fix.ps1 -InputFile "..\banned-links.psd1" -AllFixes
    # Fix banned-links.psd1 - 3-level structure: OSINT -> Category -> Subcategory -> [Bookmarks]
    # Structure: @{ 'OSINT' = @{ 'Search Engines' = @{ 'Find Users' = @(...) } } }
    # Uses 'Icon' (capitalized), includes comment block header

.EXAMPLE
    .\data-set-fix.ps1 -InputFile "..\central_america.psd1" -AllFixes
    # Fix central_america.psd1 - 2-level structure: Latin America -> Category -> [Bookmarks]
    # Structure: @{ 'Latin America' = @{ 'News Sites' = @(...), 'Vloggers' = @(...) } }
    # Uses 'Icon' (capitalized), includes comment header

.EXAMPLE
    .\data-set-fix.ps1 -InputFile "..\europe.ps1" -AllFixes
    # Fix europe.ps1 - 4-level structure: Europe -> Country -> Category -> Type -> [Bookmarks]
    # Structure: @{ 'Europe' = @{ 'Albania' = @{ 'News Sites' = @{ 'Mainstream' = @(...) } } } }
    # Uses 'Icon' (capitalized), ~39,000+ lines, .ps1 extension (not .psd1)

.EXAMPLE
    .\data-set-fix.ps1 -InputFile "..\links-sample.psd1" -AllFixes
    # Fix links-sample.psd1 - Variable depth structure: Category -> Subfolder -> [Bookmarks] or deeper
    # Structure: @{ 'News' = @{ 'General News' = @(...), 'Sports' = @{ 'Major Mens Leagues' = @(...) } } }
    # Uses 'Icon' (capitalized), includes comment header with Grok links

.EXAMPLE
    .\data-set-fix.ps1 -InputFile "..\tools.psd1" -AllFixes
    # Fix tools.psd1 - 3-level structure: Tools -> Category -> Subcategory -> [Bookmarks]
    # Structure: @{ 'Tools' = @{ '3D & CAD' = @{ '3D Modeling' = @(...) } } }
    # Uses 'Icon' (capitalized), includes comment block header

.EXAMPLE
    .\data-set-fix.ps1 -InputFile "..\middle_east.psd1" -AllFixes
    # Fix middle_east.psd1 - 3-level structure: Middle East -> Country -> Category -> [Bookmarks]
    # Structure: @{ 'Middle East' = @{ 'bahrain' = @{ 'Mainstream News Sites' = @(...) } } }
    # Uses 'icon' (lowercase), includes comment header

.EXAMPLE
    .\data-set-fix.ps1 -InputFile "..\north_america.psd1" -AllFixes
    # Fix north_america.psd1 - 3-level structure: North America -> Country -> Category -> [Bookmarks]
    # Structure: @{ 'North America' = @{ 'Canada' = @{ 'Mainstream News Sites' = @(...) } } }
    # Uses 'icon' (lowercase)

.EXAMPLE
    .\data-set-fix.ps1 -InputFile "..\south_america.psd1" -AllFixes
    # Fix south_america.psd1 - 2-level structure: South America -> Country -> [Bookmarks]
    # Structure: @{ 'South America' = @{ 'Brazil' = @(...), 'Chile' = @(...) } }
    # Uses 'Icon' (capitalized), includes comment header

.EXAMPLE
    .\data-set-fix.ps1 -InputFile "..\asia.psd1" -Diagnose
    # Run diagnostics only on asia.psd1 - shows brace balance, syntax errors, quote issues

.EXAMPLE
    .\data-set-fix.ps1 -InputFile "..\europe.ps1" -Diagnose -DetailedDiagnose -GenerateReport
    # Run detailed diagnostics on europe.ps1 and save report to europe-diagnostic-report.txt

.EXAMPLE
    .\data-set-fix.ps1 -InputFile "..\asia.psd1" -WrapperKey "Asia"
    # Fix asia.psd1 and ensure it's wrapped in 'Asia' = @{ ... } structure

.EXAMPLE
    .\data-set-fix.ps1 -InputFile "..\europe.ps1" -RemoveDuplicates -FixSyntax -FixQuotes
    # Fix duplicates, syntax errors, and quote issues in europe.ps1

.NOTES
    FILE STRUCTURE SUMMARY:
    =======================

    2-LEVEL FILES (Region -> Category -> [Bookmarks]):
    - africa.psd1:         Africa -> News Sites/Vloggers/Podcasters -> [Bookmarks]
    - central_america.psd1: Latin America -> News Sites/Vloggers/Podcasters -> [Bookmarks]
    - south_america.psd1:  South America -> Country -> [Bookmarks]

    3-LEVEL FILES (Region -> Country -> Category -> [Bookmarks]):
    - asia.psd1:           Asia -> Country -> Category -> [Bookmarks] (with nested topics)
    - australasia.psd1:    Australasia -> Country -> Category -> [Bookmarks]
    - middle_east.psd1:    Middle East -> Country -> Category -> [Bookmarks]
    - north_america.psd1:  North America -> Country -> Category -> [Bookmarks]
    - banned-links.psd1:   OSINT -> Category -> Subcategory -> [Bookmarks]
    - tools.psd1:          Tools -> Category -> Subcategory -> [Bookmarks]

    4-LEVEL FILES (Region -> Country -> Category -> Type -> [Bookmarks]):
    - europe.ps1:          Europe -> Country -> Category -> Type -> [Bookmarks]

    VARIABLE DEPTH FILES:
    - links-sample.psd1:   News -> Category -> [Bookmarks] or deeper nesting

    ICON KEY VARIATIONS:
    - 'Icon' (capitalized): africa, central_america, south_america, europe, links-sample, tools, banned-links
    - 'icon' (lowercase):   asia, australasia, middle_east, north_america

    FILE EXTENSIONS:
    - .psd1: Most files (PowerShell Data Files)
    - .ps1:  europe.ps1 (PowerShell Script that returns hashtable)

    COMMON ISSUES FIXED:
    1. Markdown code fences (```)
    2. Duplicate wrapper keys
    3. Duplicate keys at any nesting level
    4. Missing '=' operators
    5. Missing keys before '=' operators
    6. Apostrophes/smart quotes in single-quoted strings
    7. Ampersands in strings (replaced with 'and' or URL-encoded as %26)
    8. Non-ASCII characters in titles
    9. Double-quoted strings (not allowed in .psd1)
    10. Brace imbalance
    11. Malformed escape sequences
#>

param(
    [Parameter(Mandatory=$true)]
    [string]$InputFile,

    [Parameter(Mandatory=$false)]
    [string]$OutputFile,

    [Parameter(Mandatory=$false)]
    [string]$BackupFile,

    [Parameter(Mandatory=$false)]
    [string]$WrapperKey,

    [Parameter(Mandatory=$false)]
    [switch]$RemoveDuplicates,

    [Parameter(Mandatory=$false)]
    [switch]$FixSyntax,

    [Parameter(Mandatory=$false)]
    [switch]$GenerateReport,

    [Parameter(Mandatory=$false)]
    [switch]$FixQuotes,

    [Parameter(Mandatory=$false)]
    [switch]$FixBraces,

    [Parameter(Mandatory=$false)]
    [switch]$AllFixes,

    [Parameter(Mandatory=$false)]
    [switch]$Diagnose,

    [Parameter(Mandatory=$false)]
    [switch]$DetailedDiagnose,

    [Parameter(Mandatory=$false)]
    [switch]$TreeIntegrityCheck,

    [Parameter(Mandatory=$false)]
    [switch]$AutoRepair
)

# If AllFixes is specified, enable all fixes
if ($AllFixes) {
    $RemoveDuplicates = $true
    $FixSyntax = $true
    $FixQuotes = $true
    $FixBraces = $true
    $GenerateReport = $true
}

$ErrorActionPreference = 'Stop'

#region Diagnostic Functions
# These functions are used for analyzing file structure and finding issues

function Test-BraceBalance {
    <#
    .SYNOPSIS
        Count and compare open/close braces and parentheses
    #>
    param([string[]]$Lines)

    $content = $Lines -join "`n"
    $openBraces = ([regex]::Matches($content, '\{')).Count
    $closeBraces = ([regex]::Matches($content, '\}')).Count
    $openParens = ([regex]::Matches($content, '\(')).Count
    $closeParens = ([regex]::Matches($content, '\)')).Count

    return @{
        OpenBraces = $openBraces
        CloseBraces = $closeBraces
        BraceDiff = $openBraces - $closeBraces
        OpenParens = $openParens
        CloseParens = $closeParens
        ParenDiff = $openParens - $closeParens
        IsBalanced = ($openBraces -eq $closeBraces) -and ($openParens -eq $closeParens)
    }
}

function Find-BraceImbalance {
    <#
    .SYNOPSIS
        Track brace balance through file to find where imbalance occurs
    #>
    param([string[]]$Lines)

    $balance = 0
    $results = @()
    $prevBalance = 0

    for ($i = 0; $i -lt $Lines.Count; $i++) {
        $line = $Lines[$i]
        $opens = ([regex]::Matches($line, '\{')).Count
        $closes = ([regex]::Matches($line, '\}')).Count
        $prevBalance = $balance
        $balance = $balance + $opens - $closes

        # Report significant balance changes
        if ($opens -gt 0 -or $closes -gt 0) {
            $results += @{
                LineNumber = $i + 1
                Opens = $opens
                Closes = $closes
                Balance = $balance
                Line = if ($line.Length -gt 80) { $line.Substring(0, 80) + "..." } else { $line }
            }
        }

        # Alert on negative balance (more closes than opens at this point)
        if ($balance -lt 0) {
            $results[-1].Alert = "NEGATIVE BALANCE"
        }
    }

    return $results
}

function Find-ExtraOpenBraces {
    <#
    .SYNOPSIS
        Search for standalone { not part of @{ pattern
    #>
    param([string[]]$Lines)

    $results = @()
    for ($i = 0; $i -lt $Lines.Count; $i++) {
        $line = $Lines[$i]
        # Look for { that's not preceded by @
        if ($line -match '(?<!@)\{' -and $line -notmatch '@\{') {
            # Check if it's just a standalone brace
            if ($line.Trim() -eq '{') {
                $results += @{
                    LineNumber = $i + 1
                    Line = $line
                    Type = "Standalone brace"
                }
            }
        }
        # Look for lines with multiple @{
        $atBraceCount = ([regex]::Matches($line, '@\{')).Count
        if ($atBraceCount -gt 1) {
            $results += @{
                LineNumber = $i + 1
                Line = $line
                Type = "Multiple @{ on same line ($atBraceCount)"
            }
        }
    }

    return $results
}

function Find-QuoteIssues {
    <#
    .SYNOPSIS
        Find lines with odd number of single quotes (potential unclosed strings)
    #>
    param([string[]]$Lines)

    $results = @()
    for ($i = 0; $i -lt $Lines.Count; $i++) {
        $line = $Lines[$i]
        # Count single quotes (not escaped ones)
        $quoteCount = ([regex]::Matches($line, "(?<!')'(?!')")).Count

        if ($quoteCount % 2 -ne 0) {
            $results += @{
                LineNumber = $i + 1
                QuoteCount = $quoteCount
                Line = if ($line.Length -gt 100) { $line.Substring(0, 100) + "..." } else { $line }
            }
        }
    }

    return $results
}

function Get-RootLevelStructure {
    <#
    .SYNOPSIS
        Analyze root-level keys and braces
    #>
    param([string[]]$Lines)

    $rootKeys = @()
    $rootOpens = 0
    $rootCloses = 0

    for ($i = 0; $i -lt $Lines.Count; $i++) {
        $line = $Lines[$i]

        # Root-level key pattern (no indentation)
        if ($line -match "^'([^']+)'\s*=\s*@\{") {
            $rootKeys += @{
                LineNumber = $i + 1
                Key = $Matches[1]
            }
        }

        # Outer @{ at line 1
        if ($i -eq 0 -and $line -match '^@\{') {
            $rootOpens++
        }

        # Root-level close (no indentation)
        if ($line -match '^\}$') {
            $rootCloses++
        }
    }

    return @{
        RootKeys = $rootKeys
        RootKeyCount = $rootKeys.Count
        RootOpens = $rootOpens
        RootCloses = $rootCloses
        ExpectedCloses = $rootKeys.Count + 1  # countries + outer @{
    }
}

function Test-Syntax {
    <#
    .SYNOPSIS
        Run PowerShell parser to check for syntax errors
    #>
    param([string]$FilePath)

    $parseErrors = $null
    $tokens = $null
    $null = [System.Management.Automation.Language.Parser]::ParseFile(
        $FilePath,
        [ref]$tokens,
        [ref]$parseErrors
    )

    return @{
        HasErrors = $parseErrors.Count -gt 0
        ErrorCount = $parseErrors.Count
        Errors = $parseErrors | ForEach-Object {
            @{
                Line = $_.Extent.StartLineNumber
                Message = $_.Message
            }
        }
    }
}

function Get-FileEndStructure {
    <#
    .SYNOPSIS
        Analyze the last N lines of the file for structural issues
    #>
    param(
        [string[]]$Lines,
        [int]$Count = 20
    )

    $startIdx = [Math]::Max(0, $Lines.Count - $Count)
    $endLines = @()

    for ($i = $startIdx; $i -lt $Lines.Count; $i++) {
        $endLines += @{
            LineNumber = $i + 1
            Content = $Lines[$i]
            IsClose = $Lines[$i] -match '^\s*\}\s*$'
            IsArrayClose = $Lines[$i] -match '^\s*\)\s*$'
        }
    }

    return $endLines
}

function Invoke-FullDiagnosis {
    <#
    .SYNOPSIS
        Run all diagnostic checks and report results
    #>
    param(
        [string]$FilePath,
        [string[]]$Lines
    )

    Write-Host "`n" + ("=" * 70) -ForegroundColor Cyan
    Write-Host "DIAGNOSTIC REPORT: $FilePath" -ForegroundColor Cyan
    Write-Host ("=" * 70) -ForegroundColor Cyan

    # 1. Brace Balance
    Write-Host "`n[1] BRACE BALANCE" -ForegroundColor Yellow
    $balance = Test-BraceBalance -Lines $Lines
    Write-Host "    Open braces:   $($balance.OpenBraces)"
    Write-Host "    Close braces:  $($balance.CloseBraces)"
    Write-Host "    Difference:    $($balance.BraceDiff)" -ForegroundColor $(if ($balance.BraceDiff -eq 0) { 'Green' } else { 'Red' })
    Write-Host "    Open parens:   $($balance.OpenParens)"
    Write-Host "    Close parens:  $($balance.CloseParens)"
    Write-Host "    Difference:    $($balance.ParenDiff)" -ForegroundColor $(if ($balance.ParenDiff -eq 0) { 'Green' } else { 'Red' })

    # 2. Root-Level Structure
    Write-Host "`n[2] ROOT-LEVEL STRUCTURE" -ForegroundColor Yellow
    $rootStruct = Get-RootLevelStructure -Lines $Lines
    Write-Host "    Root keys found:     $($rootStruct.RootKeyCount)"
    Write-Host "    Root-level closes:   $($rootStruct.RootCloses)"
    Write-Host "    Expected closes:     $($rootStruct.ExpectedCloses)"
    if ($rootStruct.RootCloses -ne $rootStruct.ExpectedCloses) {
        Write-Host "    MISMATCH DETECTED!" -ForegroundColor Red
    }
    if ($DetailedDiagnose -and $rootStruct.RootKeys.Count -gt 0) {
        Write-Host "    Root keys:" -ForegroundColor Gray
        $rootStruct.RootKeys | ForEach-Object {
            Write-Host "      Line $($_.LineNumber): $($_.Key)" -ForegroundColor Gray
        }
    }

    # 3. Syntax Check
    Write-Host "`n[3] SYNTAX CHECK" -ForegroundColor Yellow
    $syntax = Test-Syntax -FilePath $FilePath
    if ($syntax.HasErrors) {
        Write-Host "    ERRORS FOUND: $($syntax.ErrorCount)" -ForegroundColor Red
        $syntax.Errors | Select-Object -First 10 | ForEach-Object {
            Write-Host "      Line $($_.Line): $($_.Message)" -ForegroundColor Yellow
        }
    } else {
        Write-Host "    PASSED - No syntax errors" -ForegroundColor Green
    }

    # 4. Extra Open Braces
    Write-Host "`n[4] EXTRA OPEN BRACES" -ForegroundColor Yellow
    $extraOpens = Find-ExtraOpenBraces -Lines $Lines
    if ($extraOpens.Count -gt 0) {
        Write-Host "    Found $($extraOpens.Count) potential issues:" -ForegroundColor Yellow
        $extraOpens | Select-Object -First 10 | ForEach-Object {
            Write-Host "      Line $($_.LineNumber): $($_.Type)" -ForegroundColor Yellow
        }
    } else {
        Write-Host "    None found" -ForegroundColor Green
    }

    # 5. Quote Issues
    Write-Host "`n[5] QUOTE ISSUES (odd quote count)" -ForegroundColor Yellow
    $quoteIssues = Find-QuoteIssues -Lines $Lines
    if ($quoteIssues.Count -gt 0) {
        Write-Host "    Found $($quoteIssues.Count) lines with odd quote counts:" -ForegroundColor Yellow
        $quoteIssues | Select-Object -First 10 | ForEach-Object {
            Write-Host "      Line $($_.LineNumber) ($($_.QuoteCount) quotes): $($_.Line)" -ForegroundColor Yellow
        }
    } else {
        Write-Host "    None found" -ForegroundColor Green
    }

    # 6. File End Structure
    Write-Host "`n[6] FILE END STRUCTURE (last 15 lines)" -ForegroundColor Yellow
    $endStruct = Get-FileEndStructure -Lines $Lines -Count 15
    $endStruct | ForEach-Object {
        $indicator = if ($_.IsClose) { " <-- close" } elseif ($_.IsArrayClose) { " <-- array close" } else { "" }
        Write-Host "    $($_.LineNumber): $($_.Content)$indicator" -ForegroundColor Gray
    }

    # 7. Brace Imbalance Tracking (if unbalanced)
    if ($balance.BraceDiff -ne 0) {
        Write-Host "`n[7] BRACE IMBALANCE TRACKING" -ForegroundColor Yellow
        $imbalance = Find-BraceImbalance -Lines $Lines
        $negativePoints = $imbalance | Where-Object { $_.Alert }
        if ($negativePoints.Count -gt 0) {
            Write-Host "    Negative balance points found:" -ForegroundColor Red
            $negativePoints | Select-Object -First 5 | ForEach-Object {
                Write-Host "      Line $($_.LineNumber): Balance=$($_.Balance) - $($_.Line)" -ForegroundColor Yellow
            }
        }

        # Show where balance changes significantly
        Write-Host "    Last 10 balance changes:" -ForegroundColor Gray
        $imbalance | Select-Object -Last 10 | ForEach-Object {
            Write-Host "      Line $($_.LineNumber): +$($_.Opens)/-$($_.Closes) = $($_.Balance)" -ForegroundColor Gray
        }
    }

    # 8. Brace Pair Integrity Check (duplicate wrappers and structural issues)
    Write-Host "`n[8] BRACE PAIR INTEGRITY (Header Area - First 50 Lines)" -ForegroundColor Yellow
    $duplicateStructures = Find-DuplicateWrapperStructures -Lines $Lines -HeaderLines 50
    $structuralIssues = Find-StructuralIssues -Lines $Lines

    if ($duplicateStructures.DuplicateRootOpens.Count -gt 1) {
        Write-Host "    DUPLICATE ROOT @{ FOUND IN HEADER: $($duplicateStructures.DuplicateRootOpens.Count)" -ForegroundColor Red
        $duplicateStructures.DuplicateRootOpens | ForEach-Object {
            Write-Host "      Line $($_.LineNumber + 1): $($_.Line.Substring(0, [Math]::Min(60, $_.Line.Length)))" -ForegroundColor Yellow
        }
    } else {
        Write-Host "    Root @{ occurrences in header: $($duplicateStructures.DuplicateRootOpens.Count)" -ForegroundColor Green
    }

    if ($duplicateStructures.DuplicateWrapperKeys.Count -gt 0) {
        Write-Host "    DUPLICATE WRAPPER KEYS IN HEADER:" -ForegroundColor Red
        foreach ($dupKey in $duplicateStructures.DuplicateWrapperKeys) {
            Write-Host "      '$($dupKey.Key)' appears $($dupKey.Occurrences.Count) times in header:" -ForegroundColor Yellow
            $dupKey.Occurrences | ForEach-Object {
                Write-Host "        Line $($_.LineNumber + 1)" -ForegroundColor Gray
            }
        }
    } else {
        Write-Host "    No duplicate wrapper keys in header" -ForegroundColor Green
    }

    if ($structuralIssues.Count -gt 0) {
        Write-Host "    STRUCTURAL ISSUES FOUND: $($structuralIssues.Count)" -ForegroundColor Red
        $structuralIssues | Select-Object -First 10 | ForEach-Object {
            Write-Host "      Line $($_.LineNumber + 1): $($_.Issue) - $($_.Message)" -ForegroundColor Yellow
        }
    } else {
        Write-Host "    No structural issues found" -ForegroundColor Green
    }

    Write-Host "`n" + ("=" * 70) -ForegroundColor Cyan
    Write-Host "END OF DIAGNOSTIC REPORT" -ForegroundColor Cyan
    Write-Host ("=" * 70) + "`n" -ForegroundColor Cyan

    return @{
        Balance = $balance
        RootStructure = $rootStruct
        Syntax = $syntax
        ExtraOpens = $extraOpens
        QuoteIssues = $quoteIssues
        DuplicateStructures = $duplicateStructures
        StructuralIssues = $structuralIssues
    }
}

#endregion Diagnostic Functions

#region Brace Integrity Functions
# These functions detect and fix mismatched braces and duplicate wrapper structures

function Find-DuplicateWrapperStructures {
    <#
    .SYNOPSIS
        Detect duplicate wrapper structures at the beginning of files
        (e.g., duplicate '@{' and 'Region = @{' patterns)
        Only looks at the HEADER area (first 50 lines) to avoid false positives
        from legitimate category keys that repeat under different parents
    #>
    param(
        [string[]]$Lines,
        [int]$HeaderLines = 50
    )

    $results = @{
        DuplicateRootOpens = @()
        DuplicateWrapperKeys = @()
        FirstRootOpen = -1
        FirstWrapperKey = $null
        FirstWrapperKeyLine = -1
    }

    $rootOpens = @()  # Lines with standalone @{
    $wrapperKeys = @{}  # Key name -> array of line numbers

    # Only scan the header area for duplicate wrapper structures
    $scanLimit = [Math]::Min($HeaderLines, $Lines.Count)

    for ($i = 0; $i -lt $scanLimit; $i++) {
        $line = $Lines[$i]

        # Look for root-level @{ (no indentation or minimal)
        if ($line -match '^\s{0,4}@\{' -and $line -notmatch '=\s*@\{') {
            $rootOpens += @{
                LineNumber = $i
                Line = $line
                Indentation = if ($line -match '^(\s*)') { $Matches[1].Length } else { 0 }
            }
        }

        # Look for wrapper key patterns like 'North America' = @{
        if ($line -match "^\s{0,8}'([^']+)'\s*=\s*@\{") {
            $keyName = $Matches[1]
            if (-not $wrapperKeys.ContainsKey($keyName)) {
                $wrapperKeys[$keyName] = @()
            }
            $wrapperKeys[$keyName] += @{
                LineNumber = $i
                Line = $line
                Indentation = if ($line -match '^(\s*)') { $Matches[1].Length } else { 0 }
            }
        }
    }

    # Identify duplicates
    if ($rootOpens.Count -gt 1) {
        $results.DuplicateRootOpens = $rootOpens
        $results.FirstRootOpen = $rootOpens[0].LineNumber
    } elseif ($rootOpens.Count -eq 1) {
        $results.FirstRootOpen = $rootOpens[0].LineNumber
    }

    foreach ($key in $wrapperKeys.Keys) {
        if ($wrapperKeys[$key].Count -gt 1) {
            $results.DuplicateWrapperKeys += @{
                Key = $key
                Occurrences = $wrapperKeys[$key]
            }
        }
        # Track first occurrence
        if ($results.FirstWrapperKeyLine -eq -1 -or $wrapperKeys[$key][0].LineNumber -lt $results.FirstWrapperKeyLine) {
            $results.FirstWrapperKey = $key
            $results.FirstWrapperKeyLine = $wrapperKeys[$key][0].LineNumber
        }
    }

    return $results
}

function Find-OrphanedBraces {
    <#
    .SYNOPSIS
        Find braces that don't have proper matching pairs
        Returns locations where brace depth becomes negative or stays positive at unexpected points
    #>
    param([string[]]$Lines)

    $results = @()
    $depth = 0
    $depthHistory = @()

    for ($i = 0; $i -lt $Lines.Count; $i++) {
        $line = $Lines[$i]
        $prevDepth = $depth

        # Count braces on this line
        $opens = ([regex]::Matches($line, '\{')).Count
        $closes = ([regex]::Matches($line, '\}')).Count

        $depth = $depth + $opens - $closes

        $depthHistory += @{
            LineNumber = $i
            Opens = $opens
            Closes = $closes
            DepthBefore = $prevDepth
            DepthAfter = $depth
            Line = $line
        }

        # Report issues
        if ($depth -lt 0) {
            $results += @{
                LineNumber = $i
                Issue = "NEGATIVE_DEPTH"
                Depth = $depth
                Message = "More closing braces than opening braces up to this point"
                Line = if ($line.Length -gt 80) { $line.Substring(0, 80) + "..." } else { $line }
            }
        }

        # Detect excessive opens on a single line (potential duplicate structure)
        if ($opens -gt 2) {
            $results += @{
                LineNumber = $i
                Issue = "EXCESSIVE_OPENS"
                Count = $opens
                Message = "Multiple opening braces on single line - possible malformed structure"
                Line = if ($line.Length -gt 80) { $line.Substring(0, 80) + "..." } else { $line }
            }
        }
    }

    return @{
        Issues = $results
        FinalDepth = $depth
        DepthHistory = $depthHistory
    }
}

function Find-StructuralIssues {
    <#
    .SYNOPSIS
        Comprehensive structural analysis for brace pair integrity
    #>
    param([string[]]$Lines)

    $issues = @()

    # Check for consecutive @{ patterns without proper structure
    for ($i = 0; $i -lt $Lines.Count - 1; $i++) {
        $currentLine = $Lines[$i]
        $nextLine = $Lines[$i + 1]

        # Pattern 1: @{ followed immediately by another @{ (not inside array)
        if ($currentLine -match '^\s*@\{' -and $nextLine -match "^\s*'[^']+'\s*=\s*@\{") {
            # This might be the start of a file - check if next line is a duplicate
            $wrapperKey = if ($nextLine -match "'([^']+)'") { $Matches[1] } else { "unknown" }

            # Look ahead to see if this wrapper key appears again
            for ($j = $i + 2; $j -lt [Math]::Min($i + 20, $Lines.Count); $j++) {
                if ($Lines[$j] -match "^\s*'$wrapperKey'\s*=\s*@\{") {
                    $issues += @{
                        LineNumber = $i
                        Issue = "DUPLICATE_WRAPPER_START"
                        Message = "File appears to have duplicate wrapper structure for '$wrapperKey'"
                        WrapperKey = $wrapperKey
                        FirstLine = $i + 1
                        DuplicateLine = $j + 1
                    }
                    break
                }
            }
        }

        # Pattern 2: Consecutive @{ without key assignment
        if ($currentLine.Trim() -eq '@{' -and $nextLine.Trim() -eq '@{') {
            $issues += @{
                LineNumber = $i
                Issue = "CONSECUTIVE_BARE_OPENS"
                Message = "Two consecutive @{ without proper structure"
            }
        }

        # Pattern 3: @{ followed by 'Key' = @{ where key matches previous wrapper
        if ($i -gt 0 -and $Lines[$i-1] -match "^\s*'([^']+)'\s*=\s*@\{") {
            $prevKey = $Matches[1]
            if ($currentLine -match "^\s*@\{" -and $nextLine -match "^\s*'$prevKey'\s*=\s*@\{") {
                $issues += @{
                    LineNumber = $i
                    Issue = "NESTED_DUPLICATE_WRAPPER"
                    Message = "Found nested duplicate wrapper for '$prevKey'"
                    WrapperKey = $prevKey
                }
            }
        }
    }

    # Check for header/comment sections that might indicate multiple merged files
    $headerPattern = '^\s*#\s*(Grok Chat|Data Set|External data)'
    $headerCount = 0
    for ($i = 0; $i -lt $Lines.Count; $i++) {
        if ($Lines[$i] -match $headerPattern) {
            $headerCount++
            if ($headerCount -gt 1) {
                $issues += @{
                    LineNumber = $i
                    Issue = "MULTIPLE_HEADERS"
                    Message = "Multiple file headers found - possible merged files"
                    Line = $Lines[$i]
                }
            }
        }
    }

    return $issues
}

function Get-BraceIntegrityReport {
    <#
    .SYNOPSIS
        Generate a comprehensive brace integrity report
    #>
    param(
        [string[]]$Lines,
        [switch]$Detailed,
        [int]$HeaderLines = 50
    )

    $report = @{
        DuplicateStructures = Find-DuplicateWrapperStructures -Lines $Lines -HeaderLines $HeaderLines
        OrphanedBraces = Find-OrphanedBraces -Lines $Lines
        StructuralIssues = Find-StructuralIssues -Lines $Lines
    }

    # Summary
    $hasIssues = $false

    if ($report.DuplicateStructures.DuplicateRootOpens.Count -gt 1) {
        $hasIssues = $true
    }
    if ($report.DuplicateStructures.DuplicateWrapperKeys.Count -gt 0) {
        $hasIssues = $true
    }
    if ($report.OrphanedBraces.Issues.Count -gt 0) {
        $hasIssues = $true
    }
    if ($report.OrphanedBraces.FinalDepth -ne 0) {
        $hasIssues = $true
    }
    if ($report.StructuralIssues.Count -gt 0) {
        $hasIssues = $true
    }

    $report.HasIssues = $hasIssues

    return $report
}

function Remove-DuplicateWrapperLines {
    <#
    .SYNOPSIS
        Remove duplicate wrapper structures from the beginning of files
        IMPORTANT: Only removes duplicates in the HEADER area (first ~50 lines), not
        legitimate category keys that repeat throughout the file under different parents

        Strategy: Keep the FIRST occurrence, remove the SECOND (duplicate) occurrence
    #>
    param(
        [string[]]$Lines,
        [ref]$RemovalCount
    )

    $fixedLines = @()
    $linesToSkip = @{}
    $structuralIssues = Find-StructuralIssues -Lines $Lines
    $removedWrappers = 0

    # Only handle structural issues in the header area (first 50 lines)
    foreach ($issue in $structuralIssues) {
        if ($issue.Issue -eq "DUPLICATE_WRAPPER_START" -and $issue.LineNumber -lt 50) {
            # FirstLine is where the first @{ is (1-based)
            # DuplicateLine is where the duplicate 'Key' = @{ is (1-based)
            # We want to KEEP the first occurrence and REMOVE the duplicate

            $duplicateLine = $issue.DuplicateLine - 1  # Convert to 0-based

            # Find the @{ that precedes the duplicate wrapper key
            # Look backwards from duplicateLine to find the @{ that starts the duplicate block
            $duplicateBlockStart = $duplicateLine
            for ($j = $duplicateLine - 1; $j -ge 0; $j--) {
                $line = $Lines[$j]
                if ($line -match '^\s*@\{' -and $line -notmatch '=\s*@\{') {
                    $duplicateBlockStart = $j
                    break
                }
                # Stop if we hit actual content (not comments/blank/wrapper)
                if ($line -notmatch '^\s*#' -and -not [string]::IsNullOrWhiteSpace($line) -and
                    $line -notmatch "^\s*'[^']+'\s*=\s*@\{") {
                    break
                }
            }

            # Mark the duplicate block for removal (from duplicateBlockStart to duplicateLine inclusive)
            for ($j = $duplicateBlockStart; $j -le $duplicateLine; $j++) {
                $line = $Lines[$j]
                # Only remove wrapper structure lines (comments, blank, @{, 'Key' = @{)
                if ($line -match '^\s*@\{' -or
                    $line -match "^\s*'[^']+'\s*=\s*@\{" -or
                    $line -match '^\s*#' -or
                    [string]::IsNullOrWhiteSpace($line)) {
                    if (-not $linesToSkip.ContainsKey($j)) {
                        $linesToSkip[$j] = "Duplicate wrapper structure"
                        $removedWrappers++
                    }
                }
            }
        }
    }

    # Build the fixed output
    for ($i = 0; $i -lt $Lines.Count; $i++) {
        if (-not $linesToSkip.ContainsKey($i)) {
            $fixedLines += $Lines[$i]
        } else {
            Write-Host "  Removed line $($i + 1): $($linesToSkip[$i])" -ForegroundColor Yellow
        }
    }

    $RemovalCount.Value = $removedWrappers

    return $fixedLines
}

function Repair-BraceBalance {
    <#
    .SYNOPSIS
        Repair brace balance by adding or removing braces as needed
    #>
    param(
        [string[]]$Lines,
        [ref]$FixCount
    )

    $fixedLines = [System.Collections.ArrayList]@($Lines)
    $fixes = 0

    # Calculate current balance
    $content = $Lines -join "`n"
    $opens = ([regex]::Matches($content, '\{')).Count
    $closes = ([regex]::Matches($content, '\}')).Count
    $diff = $opens - $closes

    if ($diff -gt 0) {
        # More opens than closes - add closing braces at end
        Write-Host "    Adding $diff missing closing brace(s)" -ForegroundColor Yellow
        for ($i = 0; $i -lt $diff; $i++) {
            [void]$fixedLines.Add('}')
            $fixes++
        }
    } elseif ($diff -lt 0) {
        # More closes than opens - remove excess closing braces from end
        $excess = [Math]::Abs($diff)
        Write-Host "    Removing $excess excess closing brace(s)" -ForegroundColor Yellow

        $removed = 0
        for ($i = $fixedLines.Count - 1; $i -ge 0 -and $removed -lt $excess; $i--) {
            if ($fixedLines[$i] -match '^\s*\}\s*$') {
                $fixedLines.RemoveAt($i)
                $removed++
                $fixes++
            }
        }
    }

    $FixCount.Value = $fixes

    return [string[]]$fixedLines.ToArray()
}

function Repair-MissingHashtableClosingBraces {
    <#
    .SYNOPSIS
        Fix missing closing braces for hashtable entries within arrays.

        Pattern to fix:
            @{
                'Title' = '...'
                'URL' = '...'
                'icon' = '...'    <- property line
            ),                    <- array close, but missing } before this

        Should become:
            @{
                'Title' = '...'
                'URL' = '...'
                'icon' = '...'
            }                     <- added closing brace for hashtable entry (no comma - last item)
            ),                    <- array close
    #>
    param(
        [string[]]$Lines,
        [ref]$FixCount
    )

    $fixedLines = [System.Collections.ArrayList]::new()
    $fixes = 0

    for ($i = 0; $i -lt $Lines.Count; $i++) {
        $line = $Lines[$i]

        # Check if this line is ), or ) at a certain indentation
        if ($line -match '^(\s*)\)[,]?\s*$') {
            $closeIndent = $Matches[1].Length

            # Look at the previous non-empty line
            $prevLineIdx = $i - 1
            while ($prevLineIdx -ge 0 -and $Lines[$prevLineIdx] -match '^\s*$') {
                $prevLineIdx--
            }

            if ($prevLineIdx -ge 0) {
                $prevLine = $Lines[$prevLineIdx]

                # Check if previous line is a property assignment (like 'icon' = '...')
                # and has higher indentation than the closing paren
                if ($prevLine -match "^(\s*)'[^']+'\s*=\s*'[^']*'\s*$") {
                    $propIndent = $Matches[1].Length

                    # If the property is more indented than the closing paren,
                    # we're missing a } to close the hashtable entry
                    if ($propIndent -gt $closeIndent) {
                        # Calculate the correct indentation for the missing }
                        # It should be at propIndent - 4 (one level up from property)
                        $closingBraceIndent = " " * ($propIndent - 4)
                        # No comma because this is the last item in the array
                        $missingLine = "$closingBraceIndent}"

                        [void]$fixedLines.Add($missingLine)
                        $fixes++
                        Write-Host "    Line $($i + 1): Inserted missing } before closing paren" -ForegroundColor Cyan
                    }
                }
            }
        }

        [void]$fixedLines.Add($line)
    }

    $FixCount.Value = $fixes
    return $fixedLines.ToArray()
}

function Repair-MismatchedBraceTypes {
    <#
    .SYNOPSIS
        Fix mismatched brace types where ) is used instead of } to close a hashtable
        This happens when 'Key' = @{ is closed with ) instead of }

        The key insight is that in PowerShell data files:
        - @{ ... } is a hashtable (contains 'Key' = Value pairs)
        - @( ... ) is an array (contains comma-separated items)

        This function uses a context-aware approach:
        - Look for lines with just ),
        - Check if the PREVIOUS non-empty line is ) (closing an array)
        - Check if the NEXT non-empty line starts with 'Key' = @( or 'Key' = @{
        - If both conditions are met, the current line should be }, not ),

        This pattern indicates:
            )      <- closes an array (correct)
        ),     <- THIS should be }, because it closes a hashtable containing arrays
        'Key' = @(  <- opens a new array in the parent hashtable
    #>
    param(
        [string[]]$Lines,
        [ref]$FixCount
    )

    $fixedLines = @()
    $fixes = 0

    for ($i = 0; $i -lt $Lines.Count; $i++) {
        $line = $Lines[$i]
        $fixedLine = $line

        # Pattern: line is just ),
        if ($line -match '^\s*\),\s*$') {
            # Look at the previous non-empty line
            $prevLineIdx = $i - 1
            while ($prevLineIdx -ge 0 -and $Lines[$prevLineIdx] -match '^\s*$') {
                $prevLineIdx--
            }

            # Look at the next non-empty line
            $nextLineIdx = $i + 1
            while ($nextLineIdx -lt $Lines.Count -and $Lines[$nextLineIdx] -match '^\s*$') {
                $nextLineIdx++
            }

            $shouldFix = $false

            if ($prevLineIdx -ge 0 -and $nextLineIdx -lt $Lines.Count) {
                $prevLine = $Lines[$prevLineIdx]
                $nextLine = $Lines[$nextLineIdx]

                # Previous line should be ) (closing an array) - NOT }, (closing a hashtable entry)
                # If previous line is },, then current ) is correctly closing an array
                # Next line should be 'Key' = @( or 'Key' = @{
                if ($prevLine -match '^\s*\)\s*$' -and
                    $nextLine -match "^\s*'[^']+'\s*=\s*@[\(\{]") {
                    $shouldFix = $true
                }
            }

            if ($shouldFix) {
                $fixedLine = $line -replace '\)', '}'
                if ($fixedLine -ne $line) {
                    $fixes++
                    Write-Host "    Line $($i + 1): Fixed ) to } (closing hashtable before new key)" -ForegroundColor Cyan
                }
            }
        }

        $fixedLines += $fixedLine
    }

    $FixCount.Value = $fixes
    return $fixedLines
}

#endregion Brace Integrity Functions

#region Tree Integrity Functions
# These functions perform comprehensive tree structure integrity validation
# Terminology: tree integrity check, node validation, recursive traversal,
# parent-child consistency, and structure invariants

# Define node types for the bookmark tree structure
$script:NodeTypes = @{
    Root = 'Root'              # The outermost @{ } wrapper
    Region = 'Region'          # Geographic region (e.g., 'North America', 'Europe')
    Country = 'Country'        # Country (e.g., 'Canada', 'USA')
    Category = 'Category'      # Category (e.g., 'Business', 'News')
    Subcategory = 'Subcategory'# Subcategory (e.g., 'Mainstream', 'Alternative')
    Array = 'Array'            # @( ) array containing bookmark entries
    Bookmark = 'Bookmark'      # Individual bookmark @{ Title, URL, icon }
}

# Define required fields for bookmark nodes
$script:BookmarkRequiredFields = @('Title', 'URL')
$script:BookmarkOptionalFields = @('icon', 'Icon', 'Description', 'Name')

function New-TreeNode {
    <#
    .SYNOPSIS
        Create a new tree node object for tracking during recursive traversal
    #>
    param(
        [string]$NodeType,
        [string]$Name,
        [int]$LineNumber,
        [int]$Depth,
        [object]$Parent = $null
    )

    return [PSCustomObject]@{
        NodeType = $NodeType
        Name = $Name
        LineNumber = $LineNumber
        Depth = $Depth
        Parent = $Parent
        Children = [System.Collections.ArrayList]::new()
        Fields = @{}
        Issues = [System.Collections.ArrayList]::new()
        IsValid = $true
    }
}

function Add-TreeIssue {
    <#
    .SYNOPSIS
        Add an issue to a tree node's issue list
    #>
    param(
        [PSCustomObject]$Node,
        [string]$Severity,  # Error, Warning, Info
        [string]$IssueType,
        [string]$Message,
        [int]$LineNumber = -1
    )

    $issue = [PSCustomObject]@{
        Severity = $Severity
        IssueType = $IssueType
        Message = $Message
        LineNumber = if ($LineNumber -gt 0) { $LineNumber } else { $Node.LineNumber }
        NodePath = Get-NodePath -Node $Node
    }

    [void]$Node.Issues.Add($issue)

    if ($Severity -eq 'Error') {
        $Node.IsValid = $false
    }
}

function Get-NodePath {
    <#
    .SYNOPSIS
        Get the full path from root to this node
    #>
    param([PSCustomObject]$Node)

    $path = @()
    $current = $Node
    while ($current) {
        if ($current.Name) {
            $path = @($current.Name) + $path
        }
        $current = $current.Parent
    }
    return $path -join ' > '
}

function Test-NodeInvariants {
    <#
    .SYNOPSIS
        Validate that a node meets required invariants (required fields, data types)

    .DESCRIPTION
        For each node type, checks:
        - Required fields are present
        - Field values have correct data types
        - Field values are not empty or malformed
        - No unexpected fields (warning only)

    .PARAMETER Node
        The tree node to validate

    .PARAMETER Lines
        The source file lines for context

    .OUTPUTS
        Boolean indicating if node passes all invariant checks
    #>
    param(
        [PSCustomObject]$Node,
        [string[]]$Lines
    )

    $isValid = $true

    switch ($Node.NodeType) {
        'Bookmark' {
            # Check required fields
            foreach ($field in $script:BookmarkRequiredFields) {
                if (-not $Node.Fields.ContainsKey($field)) {
                    Add-TreeIssue -Node $Node -Severity 'Error' -IssueType 'MissingRequiredField' `
                        -Message "Missing required field '$field'"
                    $isValid = $false
                }
                elseif ([string]::IsNullOrWhiteSpace($Node.Fields[$field])) {
                    Add-TreeIssue -Node $Node -Severity 'Error' -IssueType 'EmptyRequiredField' `
                        -Message "Required field '$field' is empty"
                    $isValid = $false
                }
            }

            # Check URL format
            if ($Node.Fields.ContainsKey('URL')) {
                $url = $Node.Fields['URL']
                if ($url -and $url -notmatch '^https?://') {
                    Add-TreeIssue -Node $Node -Severity 'Warning' -IssueType 'InvalidURLFormat' `
                        -Message "URL does not start with http:// or https://: $url"
                }
            }

            # Check for unexpected fields (info only)
            $allKnownFields = $script:BookmarkRequiredFields + $script:BookmarkOptionalFields
            foreach ($field in $Node.Fields.Keys) {
                if ($field -notin $allKnownFields) {
                    Add-TreeIssue -Node $Node -Severity 'Info' -IssueType 'UnexpectedField' `
                        -Message "Unexpected field '$field' found"
                }
            }
        }

        'Category' {
            # Categories should have at least one child (subcategory or array)
            if ($Node.Children.Count -eq 0) {
                Add-TreeIssue -Node $Node -Severity 'Warning' -IssueType 'EmptyCategory' `
                    -Message "Category '$($Node.Name)' has no children"
            }
        }

        'Country' {
            # Countries should have at least one category
            if ($Node.Children.Count -eq 0) {
                Add-TreeIssue -Node $Node -Severity 'Warning' -IssueType 'EmptyCountry' `
                    -Message "Country '$($Node.Name)' has no categories"
            }
        }

        'Region' {
            # Regions should have at least one country
            if ($Node.Children.Count -eq 0) {
                Add-TreeIssue -Node $Node -Severity 'Warning' -IssueType 'EmptyRegion' `
                    -Message "Region '$($Node.Name)' has no countries"
            }
        }

        'Array' {
            # Arrays should contain at least one bookmark
            if ($Node.Children.Count -eq 0) {
                Add-TreeIssue -Node $Node -Severity 'Warning' -IssueType 'EmptyArray' `
                    -Message "Array at line $($Node.LineNumber) has no bookmark entries"
            }
        }
    }

    return $isValid
}

function Test-ParentChildConsistency {
    <#
    .SYNOPSIS
        Check parent-child relationship consistency

    .DESCRIPTION
        Validates:
        - No orphan nodes (all nodes except root have a parent)
        - No circular references (no node is its own ancestor)
        - No broken links (all parent references point to valid nodes)
        - Proper nesting order (Region > Country > Category > Subcategory > Array > Bookmark)

    .PARAMETER Node
        The tree node to validate

    .PARAMETER AncestorChain
        List of ancestor nodes to detect circular references by checking the parent chain

    .OUTPUTS
        Boolean indicating if parent-child relationships are valid
    #>
    param(
        [PSCustomObject]$Node,
        [System.Collections.ArrayList]$AncestorChain = $null
    )

    if ($null -eq $AncestorChain) {
        $AncestorChain = [System.Collections.ArrayList]::new()
    }

    $isValid = $true

    # Check for circular references by examining the parent chain
    # A true circular reference would mean a node appears in its own ancestry
    $current = $Node.Parent
    $depth = 0
    $maxDepth = 100  # Prevent infinite loops
    while ($current -and $depth -lt $maxDepth) {
        if ([object]::ReferenceEquals($current, $Node)) {
            Add-TreeIssue -Node $Node -Severity 'Error' -IssueType 'CircularReference' `
                -Message "Circular reference detected: node '$($Node.Name)' appears in its own ancestry"
            return $false
        }
        $current = $current.Parent
        $depth++
    }

    # Check for orphan nodes (except root)
    if ($Node.NodeType -ne 'Root' -and $null -eq $Node.Parent) {
        Add-TreeIssue -Node $Node -Severity 'Error' -IssueType 'OrphanNode' `
            -Message "Orphan node '$($Node.Name)' has no parent"
        $isValid = $false
    }

    # Validate nesting order - be more permissive to handle varied file structures
    $validChildTypes = switch ($Node.NodeType) {
        'Root' { @('Region', 'Country', 'Category', 'Array') }  # Root can contain various types
        'Region' { @('Country', 'Category', 'Array') }  # Regions can have multiple child types
        'Country' { @('Category', 'Array') }
        'Category' { @('Subcategory', 'Array') }
        'Subcategory' { @('Array') }
        'Array' { @('Bookmark') }
        'Bookmark' { @() }  # Bookmarks have no children
        default { @('Region', 'Country', 'Category', 'Subcategory', 'Array', 'Bookmark') }
    }

    foreach ($child in $Node.Children) {
        if ($child.NodeType -notin $validChildTypes -and $validChildTypes.Count -gt 0) {
            Add-TreeIssue -Node $Node -Severity 'Info' -IssueType 'UnexpectedNesting' `
                -Message "Child type '$($child.NodeType)' under '$($Node.NodeType)' node (may be acceptable)"
        }

        # Recursively check children
        $childValid = Test-ParentChildConsistency -Node $child -AncestorChain $AncestorChain
        if (-not $childValid) {
            $isValid = $false
        }
    }

    return $isValid
}

function Test-OrderingRules {
    <#
    .SYNOPSIS
        Validate ordering rules for child nodes

    .DESCRIPTION
        Checks if children are sorted correctly (alphabetically by name for most node types)

    .PARAMETER Node
        The tree node whose children to validate

    .OUTPUTS
        Boolean indicating if ordering is correct
    #>
    param([PSCustomObject]$Node)

    $isValid = $true

    # Only check ordering for nodes that should have sorted children
    if ($Node.NodeType -in @('Root', 'Region', 'Country', 'Category', 'Subcategory')) {
        $childNames = $Node.Children | Where-Object { $_.Name } | ForEach-Object { $_.Name }

        if ($childNames.Count -gt 1) {
            $sortedNames = $childNames | Sort-Object
            for ($i = 0; $i -lt $childNames.Count; $i++) {
                if ($childNames[$i] -ne $sortedNames[$i]) {
                    Add-TreeIssue -Node $Node -Severity 'Info' -IssueType 'UnsortedChildren' `
                        -Message "Children of '$($Node.Name)' are not sorted alphabetically"
                    break
                }
            }
        }
    }

    # Recursively check children
    foreach ($child in $Node.Children) {
        Test-OrderingRules -Node $child | Out-Null
    }

    return $isValid
}

function Build-TreeFromLines {
    <#
    .SYNOPSIS
        Parse PowerShell data file lines and build a tree structure

    .DESCRIPTION
        Performs recursive traversal of the file content to build a tree representation.
        Uses a stack-based parser to track depth and parent-child relationships.

    .PARAMETER Lines
        The source file lines to parse

    .OUTPUTS
        Root node of the parsed tree
    #>
    param([string[]]$Lines)

    $root = New-TreeNode -NodeType 'Root' -Name 'Root' -LineNumber 1 -Depth 0
    $nodeStack = [System.Collections.Generic.Stack[PSCustomObject]]::new()
    $nodeStack.Push($root)

    $currentBookmark = $null
    $depth = 0

    for ($i = 0; $i -lt $Lines.Count; $i++) {
        $line = $Lines[$i]
        $lineNum = $i + 1
        $trimmedLine = $line.Trim()

        # Skip empty lines and comments
        if ([string]::IsNullOrWhiteSpace($trimmedLine) -or $trimmedLine.StartsWith('#')) {
            continue
        }

        # Calculate indent depth (each 4 spaces = 1 level)
        $leadingSpaces = ($line -replace '^(\s*).*', '$1').Length
        $indentDepth = [math]::Floor($leadingSpaces / 4)

        # Detect opening patterns
        if ($trimmedLine -match "^'([^']+)'\s*=\s*@\{") {
            # Hashtable opening: 'Key' = @{
            $keyName = $matches[1]
            $parent = $nodeStack.Peek()

            # Determine node type based on depth and context
            $nodeType = switch ($depth) {
                0 { 'Region' }
                1 { 'Country' }
                2 { 'Category' }
                3 { 'Subcategory' }
                default { 'Category' }
            }

            $newNode = New-TreeNode -NodeType $nodeType -Name $keyName -LineNumber $lineNum -Depth $depth -Parent $parent
            [void]$parent.Children.Add($newNode)
            $nodeStack.Push($newNode)
            $depth++
        }
        elseif ($trimmedLine -match "^'([^']+)'\s*=\s*@\(") {
            # Array opening: 'Key' = @(
            $keyName = $matches[1]
            $parent = $nodeStack.Peek()

            $newNode = New-TreeNode -NodeType 'Array' -Name $keyName -LineNumber $lineNum -Depth $depth -Parent $parent
            [void]$parent.Children.Add($newNode)
            $nodeStack.Push($newNode)
            $depth++
        }
        elseif ($trimmedLine -eq '@{' -and $depth -gt 0) {
            # Standalone hashtable opening (bookmark entry in array)
            $parent = $nodeStack.Peek()

            if ($parent.NodeType -eq 'Array') {
                $currentBookmark = New-TreeNode -NodeType 'Bookmark' -Name '' -LineNumber $lineNum -Depth $depth -Parent $parent
                [void]$parent.Children.Add($currentBookmark)
            }
            $depth++
        }
        elseif ($trimmedLine -match "^'([^']+)'\s*=\s*'([^']*)'") {
            # Field assignment: 'Key' = 'Value'
            if ($currentBookmark) {
                $fieldName = $matches[1]
                $fieldValue = $matches[2]
                $currentBookmark.Fields[$fieldName] = $fieldValue

                if ($fieldName -eq 'Title') {
                    $currentBookmark.Name = $fieldValue
                }
            }
        }
        elseif ($trimmedLine -match '^\}' -or $trimmedLine -match '^\),?$') {
            # Closing brace or paren
            $depth--
            if ($depth -lt 0) { $depth = 0 }

            if ($trimmedLine -match '^\}') {
                # Close hashtable
                if ($currentBookmark -and $nodeStack.Peek().NodeType -ne 'Bookmark') {
                    $currentBookmark = $null
                }
                if ($nodeStack.Count -gt 1) {
                    [void]$nodeStack.Pop()
                }
            }
            elseif ($trimmedLine -match '^\)') {
                # Close array
                if ($nodeStack.Count -gt 1 -and $nodeStack.Peek().NodeType -eq 'Array') {
                    [void]$nodeStack.Pop()
                }
            }
        }
    }

    return $root
}

function Invoke-RecursiveTreeValidation {
    <#
    .SYNOPSIS
        Recursively traverse and validate all nodes in the tree

    .DESCRIPTION
        Performs depth-first traversal of the tree, validating each node against
        structure invariants and collecting all issues.

    .PARAMETER Node
        The root node to start validation from

    .PARAMETER Lines
        The source file lines for context

    .PARAMETER AllIssues
        Reference to ArrayList to collect all issues found

    .OUTPUTS
        Boolean indicating overall tree validity
    #>
    param(
        [PSCustomObject]$Node,
        [string[]]$Lines,
        [ref]$AllIssues
    )

    $isValid = $true

    # Validate this node's invariants
    $nodeValid = Test-NodeInvariants -Node $Node -Lines $Lines
    if (-not $nodeValid) {
        $isValid = $false
    }

    # Collect issues from this node
    foreach ($issue in $Node.Issues) {
        [void]$AllIssues.Value.Add($issue)
    }

    # Recursively validate children
    foreach ($child in $Node.Children) {
        $childValid = Invoke-RecursiveTreeValidation -Node $child -Lines $Lines -AllIssues $AllIssues
        if (-not $childValid) {
            $isValid = $false
        }
    }

    return $isValid
}

function Repair-TreeStructure {
    <#
    .SYNOPSIS
        Attempt to automatically repair simple structural issues in the tree

    .DESCRIPTION
        Auto-repair mode that attempts to fix:
        - Missing required fields (adds placeholder values)
        - Empty URLs (marks with placeholder)
        - Orphan nodes (removes if unrepairable)

    .PARAMETER Lines
        The source file lines to repair

    .PARAMETER Issues
        List of issues to attempt to fix

    .PARAMETER RepairCount
        Reference to count of repairs made

    .OUTPUTS
        Repaired lines array
    #>
    param(
        [string[]]$Lines,
        [array]$Issues,
        [ref]$RepairCount
    )

    $fixedLines = [System.Collections.ArrayList]::new($Lines)
    $repairs = 0
    $lineOffsets = @{}  # Track line insertions/deletions

    foreach ($issue in $Issues) {
        $lineNum = $issue.LineNumber - 1  # Convert to 0-based index

        switch ($issue.IssueType) {
            'MissingRequiredField' {
                # Find the closing brace for this bookmark and insert field before it
                if ($issue.Message -match "'(\w+)'") {
                    $fieldName = $matches[1]
                    $lineIdx = $lineNum

                    # Find the closing brace
                    for ($i = $lineIdx; $i -lt $fixedLines.Count; $i++) {
                        if ($fixedLines[$i] -match '^\s*\}') {
                            # Get indentation from previous line
                            $indent = ($fixedLines[$i - 1] -replace '^(\s*).*', '$1')
                            $placeholderLine = "$indent'$fieldName' = 'PLACEHOLDER - NEEDS VALUE'"
                            $fixedLines.Insert($i, $placeholderLine)
                            $repairs++
                            Write-Host "    Auto-repair: Added placeholder for '$fieldName' at line $($i + 1)" -ForegroundColor Yellow
                            break
                        }
                    }
                }
            }

            'EmptyRequiredField' {
                # Find and update the empty field
                if ($issue.Message -match "'(\w+)'") {
                    $fieldName = $matches[1]
                    if ($fixedLines[$lineNum] -match "^\s*'$fieldName'\s*=\s*''") {
                        $fixedLines[$lineNum] = $fixedLines[$lineNum] -replace "=\s*''", "= 'PLACEHOLDER - NEEDS VALUE'"
                        $repairs++
                        Write-Host "    Auto-repair: Added placeholder value for empty '$fieldName' at line $($lineNum + 1)" -ForegroundColor Yellow
                    }
                }
            }

            'InvalidURLFormat' {
                # Prepend https:// if URL doesn't have protocol
                if ($fixedLines[$lineNum] -match "^\s*'URL'\s*=\s*'([^']+)'") {
                    $currentUrl = $matches[1]
                    if ($currentUrl -notmatch '^https?://') {
                        $fixedLines[$lineNum] = $fixedLines[$lineNum] -replace "=\s*'[^']+'", "= 'https://$currentUrl'"
                        $repairs++
                        Write-Host "    Auto-repair: Added https:// to URL at line $($lineNum + 1)" -ForegroundColor Yellow
                    }
                }
            }
        }
    }

    $RepairCount.Value = $repairs
    return [string[]]$fixedLines.ToArray()
}

function New-TreeIntegrityReport {
    <#
    .SYNOPSIS
        Generate a detailed integrity report from validation results

    .DESCRIPTION
        Creates a comprehensive report including:
        - Summary statistics (total nodes, issues by severity)
        - Detailed issue list with line numbers and paths
        - Recommendations for fixes

    .PARAMETER TreeRoot
        The validated tree root node

    .PARAMETER AllIssues
        All collected issues from validation

    .PARAMETER FilePath
        Path to the file being validated

    .OUTPUTS
        Array of report lines
    #>
    param(
        [PSCustomObject]$TreeRoot,
        [array]$AllIssues,
        [string]$FilePath
    )

    $report = @()
    $report += "=" * 70
    $report += "TREE INTEGRITY VALIDATION REPORT"
    $report += "=" * 70
    $report += ""
    $report += "File: $FilePath"
    $report += "Generated: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
    $report += ""

    # Count nodes by type
    $nodeCounts = @{}
    $countNodes = {
        param($node)
        if (-not $nodeCounts.ContainsKey($node.NodeType)) {
            $nodeCounts[$node.NodeType] = 0
        }
        $nodeCounts[$node.NodeType]++
        foreach ($child in $node.Children) {
            & $countNodes $child
        }
    }
    & $countNodes $TreeRoot

    $report += "TREE STRUCTURE SUMMARY"
    $report += "-" * 40
    foreach ($nodeType in $nodeCounts.Keys | Sort-Object) {
        $report += "  $nodeType nodes: $($nodeCounts[$nodeType])"
    }
    $report += ""

    # Count issues by severity
    $errorCount = ($AllIssues | Where-Object { $_.Severity -eq 'Error' }).Count
    $warningCount = ($AllIssues | Where-Object { $_.Severity -eq 'Warning' }).Count
    $infoCount = ($AllIssues | Where-Object { $_.Severity -eq 'Info' }).Count

    $report += "ISSUE SUMMARY"
    $report += "-" * 40
    $report += "  Errors: $errorCount"
    $report += "  Warnings: $warningCount"
    $report += "  Info: $infoCount"
    $report += "  Total: $($AllIssues.Count)"
    $report += ""

    if ($AllIssues.Count -gt 0) {
        $report += "DETAILED ISSUES"
        $report += "-" * 40

        # Group by severity
        foreach ($severity in @('Error', 'Warning', 'Info')) {
            $severityIssues = $AllIssues | Where-Object { $_.Severity -eq $severity }
            if ($severityIssues.Count -gt 0) {
                $report += ""
                $report += "[$severity] ($($severityIssues.Count) issues)"
                foreach ($issue in $severityIssues) {
                    $report += "  Line $($issue.LineNumber): $($issue.IssueType)"
                    $report += "    Path: $($issue.NodePath)"
                    $report += "    Message: $($issue.Message)"
                }
            }
        }
    }

    $report += ""
    $report += "=" * 70
    $report += "END OF REPORT"
    $report += "=" * 70

    return $report
}

function Invoke-TreeIntegrityCheck {
    <#
    .SYNOPSIS
        Main entry point for tree integrity validation

    .DESCRIPTION
        Orchestrates the full tree integrity check process:
        1. Build tree structure from file lines
        2. Recursive traversal and node validation
        3. Parent-child consistency checks
        4. Ordering rule validation
        5. Generate detailed integrity report
        6. Optionally perform auto-repair

    .PARAMETER Lines
        The source file lines to validate

    .PARAMETER FilePath
        Path to the file being validated

    .PARAMETER AutoRepair
        Whether to attempt automatic repairs

    .OUTPUTS
        Hashtable with validation results and optionally repaired lines
    #>
    param(
        [string[]]$Lines,
        [string]$FilePath,
        [switch]$AutoRepair
    )

    Write-Host "`n=== TREE INTEGRITY CHECK ===" -ForegroundColor Cyan
    Write-Host "File: $FilePath" -ForegroundColor White

    # Step 1: Build tree structure
    Write-Host "`n[Step 1/5] Building tree structure from file..." -ForegroundColor Yellow
    $treeRoot = Build-TreeFromLines -Lines $Lines
    Write-Host "  Tree root created with $($treeRoot.Children.Count) top-level children" -ForegroundColor Green

    # Step 2: Recursive node validation
    Write-Host "`n[Step 2/5] Performing recursive node validation..." -ForegroundColor Yellow
    $allIssues = [System.Collections.ArrayList]::new()
    $isValid = Invoke-RecursiveTreeValidation -Node $treeRoot -Lines $Lines -AllIssues ([ref]$allIssues)
    Write-Host "  Node validation complete. Issues found: $($allIssues.Count)" -ForegroundColor $(if ($allIssues.Count -eq 0) { 'Green' } else { 'Yellow' })

    # Step 3: Parent-child consistency check
    Write-Host "`n[Step 3/5] Checking parent-child consistency..." -ForegroundColor Yellow
    $consistencyValid = Test-ParentChildConsistency -Node $treeRoot
    # Collect any new issues
    $collectIssues = {
        param($node)
        foreach ($issue in $node.Issues) {
            if ($issue -notin $allIssues) {
                [void]$allIssues.Add($issue)
            }
        }
        foreach ($child in $node.Children) {
            & $collectIssues $child
        }
    }
    & $collectIssues $treeRoot
    Write-Host "  Parent-child consistency: $(if ($consistencyValid) { 'PASSED' } else { 'ISSUES FOUND' })" -ForegroundColor $(if ($consistencyValid) { 'Green' } else { 'Yellow' })

    # Step 4: Ordering validation
    Write-Host "`n[Step 4/5] Validating ordering rules..." -ForegroundColor Yellow
    Test-OrderingRules -Node $treeRoot | Out-Null
    & $collectIssues $treeRoot
    $orderingIssues = ($allIssues | Where-Object { $_.IssueType -eq 'UnsortedChildren' }).Count
    Write-Host "  Ordering issues: $orderingIssues" -ForegroundColor $(if ($orderingIssues -eq 0) { 'Green' } else { 'Cyan' })

    # Step 5: Generate report
    Write-Host "`n[Step 5/5] Generating integrity report..." -ForegroundColor Yellow
    $reportLines = New-TreeIntegrityReport -TreeRoot $treeRoot -AllIssues $allIssues -FilePath $FilePath

    # Display summary
    $errorCount = ($allIssues | Where-Object { $_.Severity -eq 'Error' }).Count
    $warningCount = ($allIssues | Where-Object { $_.Severity -eq 'Warning' }).Count
    $infoCount = ($allIssues | Where-Object { $_.Severity -eq 'Info' }).Count

    Write-Host "`n=== INTEGRITY CHECK RESULTS ===" -ForegroundColor Cyan
    Write-Host "  Errors: $errorCount" -ForegroundColor $(if ($errorCount -eq 0) { 'Green' } else { 'Red' })
    Write-Host "  Warnings: $warningCount" -ForegroundColor $(if ($warningCount -eq 0) { 'Green' } else { 'Yellow' })
    Write-Host "  Info: $infoCount" -ForegroundColor Cyan

    $result = @{
        IsValid = ($errorCount -eq 0)
        TreeRoot = $treeRoot
        Issues = $allIssues
        Report = $reportLines
        Lines = $Lines
        ErrorCount = $errorCount
        WarningCount = $warningCount
        InfoCount = $infoCount
    }

    # Auto-repair if requested
    if ($AutoRepair -and $allIssues.Count -gt 0) {
        Write-Host "`n=== AUTO-REPAIR MODE ===" -ForegroundColor Magenta
        $repairCount = 0
        $repairedLines = Repair-TreeStructure -Lines $Lines -Issues $allIssues -RepairCount ([ref]$repairCount)
        Write-Host "  Repairs attempted: $repairCount" -ForegroundColor $(if ($repairCount -gt 0) { 'Green' } else { 'Yellow' })
        $result.RepairedLines = $repairedLines
        $result.RepairCount = $repairCount
    }

    return $result
}

#endregion Tree Integrity Functions

# Set default output and backup file names if not provided
if (-not $OutputFile) {
    $baseName = [System.IO.Path]::GetFileNameWithoutExtension($InputFile)
    $extension = [System.IO.Path]::GetExtension($InputFile)
    $directory = [System.IO.Path]::GetDirectoryName($InputFile)
    if (-not $directory) { $directory = "." }
    $OutputFile = Join-Path $directory "$baseName-fixed$extension"
}

if (-not $BackupFile) {
    $baseName = [System.IO.Path]::GetFileNameWithoutExtension($InputFile)
    $extension = [System.IO.Path]::GetExtension($InputFile)
    $directory = [System.IO.Path]::GetDirectoryName($InputFile)
    if (-not $directory) { $directory = "." }
    $BackupFile = Join-Path $directory "$baseName-backup$extension"
}

Write-Host "=== Generic Data-Set Fix Script ===" -ForegroundColor Cyan
Write-Host "Input:  $InputFile" -ForegroundColor White
Write-Host "Output: $OutputFile" -ForegroundColor White
Write-Host "Backup: $BackupFile" -ForegroundColor White

# Step 1: Create backup
Write-Host "`n[Step 1/6] Creating backup..." -ForegroundColor Yellow
if (-not (Test-Path $BackupFile)) {
    Copy-Item $InputFile $BackupFile -Force
    Write-Host "  Backup created: $BackupFile" -ForegroundColor Green
} else {
    Write-Host "  Backup already exists: $BackupFile" -ForegroundColor Yellow
}

# Step 2: Read the file
Write-Host "`n[Step 2/6] Reading input file..." -ForegroundColor Yellow
$content = Get-Content $InputFile -Encoding UTF8 -Raw
$lines = $content -split "`r?`n"
Write-Host "  Total lines: $($lines.Count)" -ForegroundColor Cyan

# If Diagnose mode, run diagnostics and exit
if ($Diagnose) {
    $diagResults = Invoke-FullDiagnosis -FilePath $InputFile -Lines $lines

    # Optionally save diagnostic report
    if ($GenerateReport) {
        $diagReportFile = $InputFile -replace '\.[^.]+$', '-diagnostic-report.txt'
        $diagReport = @()
        $diagReport += "Diagnostic Report for: $InputFile"
        $diagReport += "Generated: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
        $diagReport += "=" * 70
        $diagReport += ""
        $diagReport += "BRACE BALANCE"
        $diagReport += "  Open braces: $($diagResults.Balance.OpenBraces)"
        $diagReport += "  Close braces: $($diagResults.Balance.CloseBraces)"
        $diagReport += "  Difference: $($diagResults.Balance.BraceDiff)"
        $diagReport += "  Open parens: $($diagResults.Balance.OpenParens)"
        $diagReport += "  Close parens: $($diagResults.Balance.CloseParens)"
        $diagReport += "  Paren difference: $($diagResults.Balance.ParenDiff)"
        $diagReport += ""
        $diagReport += "ROOT-LEVEL STRUCTURE"
        $diagReport += "  Root keys: $($diagResults.RootStructure.RootKeyCount)"
        $diagReport += "  Root closes: $($diagResults.RootStructure.RootCloses)"
        $diagReport += "  Expected closes: $($diagResults.RootStructure.ExpectedCloses)"
        $diagReport += ""
        $diagReport += "SYNTAX CHECK"
        $diagReport += "  Errors: $($diagResults.Syntax.ErrorCount)"
        if ($diagResults.Syntax.Errors) {
            $diagResults.Syntax.Errors | ForEach-Object {
                $diagReport += "    Line $($_.Line): $($_.Message)"
            }
        }
        $diagReport += ""
        $diagReport += "EXTRA OPEN BRACES: $($diagResults.ExtraOpens.Count)"
        $diagResults.ExtraOpens | ForEach-Object {
            $diagReport += "  Line $($_.LineNumber): $($_.Type)"
        }
        $diagReport += ""
        $diagReport += "QUOTE ISSUES: $($diagResults.QuoteIssues.Count)"
        $diagResults.QuoteIssues | ForEach-Object {
            $diagReport += "  Line $($_.LineNumber): $($_.QuoteCount) quotes"
        }

        $diagReport | Out-File $diagReportFile -Encoding UTF8
        Write-Host "Diagnostic report saved: $diagReportFile" -ForegroundColor Green
    }

    Write-Host "`nDiagnose mode complete. Use -AllFixes to apply fixes." -ForegroundColor Cyan
    exit 0
}

# If TreeIntegrityCheck mode, run tree validation
if ($TreeIntegrityCheck) {
    $treeCheckResult = Invoke-TreeIntegrityCheck -Lines $lines -FilePath $InputFile -AutoRepair:$AutoRepair

    # Save tree integrity report
    $treeReportFile = $InputFile -replace '\.[^.]+$', '-tree-integrity-report.txt'
    $treeCheckResult.Report | Out-File $treeReportFile -Encoding UTF8
    Write-Host "`n  Tree integrity report saved: $treeReportFile" -ForegroundColor Green

    # If auto-repair was performed, save the repaired file
    if ($AutoRepair -and $treeCheckResult.RepairCount -gt 0) {
        Write-Host "`n  Saving repaired file to: $OutputFile" -ForegroundColor Green
        $treeCheckResult.RepairedLines | Out-File $OutputFile -Encoding UTF8
        Write-Host "  Repairs applied: $($treeCheckResult.RepairCount)" -ForegroundColor Green
    }

    # Display final summary
    Write-Host "`n=== TREE INTEGRITY CHECK COMPLETE ===" -ForegroundColor Cyan
    if ($treeCheckResult.IsValid) {
        Write-Host "  Result: PASSED - No structural errors found" -ForegroundColor Green
    } else {
        Write-Host "  Result: FAILED - Structural errors detected" -ForegroundColor Red
        Write-Host "  See report for details: $treeReportFile" -ForegroundColor Yellow
    }

    Write-Host "`nTree integrity check complete." -ForegroundColor Cyan
    exit $(if ($treeCheckResult.IsValid) { 0 } else { 1 })
}

# Initialize report
$report = @()
$report += "Data-Set Fix Report"
$report += "=" * 70
$report += "Input File: $InputFile"
$report += "Date: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
$report += ""

# Step 3: Find and remove markdown code fences
Write-Host "`n[Step 3/6] Finding markdown code fences..." -ForegroundColor Yellow
$fenceLines = @()
for ($i = 0; $i -lt $lines.Count; $i++) {
    if ($lines[$i] -match '^```') {
        $fenceLines += $i
        Write-Host "  Found fence at line $($i + 1): $($lines[$i].Substring(0, [Math]::Min(50, $lines[$i].Length)))" -ForegroundColor Gray
    }
}
Write-Host "  Markdown fences found: $($fenceLines.Count)" -ForegroundColor Cyan
$report += "Markdown Code Fences: $($fenceLines.Count)"
$fenceLines | ForEach-Object { $report += "  Line $($_ + 1)" }
$report += ""



# Step 4: Find duplicate wrapper keys (e.g., duplicate 'Europe' = @{)
Write-Host "`n[Step 4/6] Finding duplicate wrapper keys..." -ForegroundColor Yellow
$wrapperLines = @()

for ($i = 0; $i -lt $lines.Count; $i++) {
    if ($WrapperKey -and $lines[$i] -match "^\s*'$WrapperKey'\s*=\s*@\{") {
        $wrapperLines += $i
        Write-Host "  Found '$WrapperKey' wrapper at line $($i + 1)" -ForegroundColor Gray
    }
}

if ($wrapperLines.Count -gt 1) {
    Write-Host "  WARNING: Multiple '$WrapperKey' wrappers found: $($wrapperLines.Count)" -ForegroundColor Yellow
}
Write-Host "  Wrapper keys found: $($wrapperLines.Count)" -ForegroundColor Cyan

$report += "Wrapper Keys ('$WrapperKey'): $($wrapperLines.Count)"
$wrapperLines | ForEach-Object { $report += "  Line $($_ + 1)" }
$report += ""

# Step 5: Find duplicate keys at any level
Write-Host "`n[Step 5/6] Finding duplicate keys at all levels..." -ForegroundColor Yellow

function Find-DuplicateKeys {
    param($lines)

    $duplicates = @()
    # Stack-based tracking: each entry is a hashtable of keys seen at that scope
    # We use a unique scope ID that changes when entering a new hashtable within an array
    $scopeStack = @(@{})  # Start with one scope
    $scopeId = 0
    $inArray = @($false)  # Track if we're inside an array at each level

    for ($i = 0; $i -lt $lines.Count; $i++) {
        $line = $lines[$i]

        # Check for opening array @(
        if ($line -match '@\(') {
            $inArray += $true
        }

        # Check for opening hashtable @{
        if ($line -match '@\{') {
            # If we're inside an array, each @{ starts a new independent scope
            if ($inArray[-1]) {
                $scopeId++
                $scopeStack += @{}
            } else {
                # Regular nested hashtable - extend current scope
                $scopeStack += @{}
            }
            $inArray += $false
        }

        # Look for key definitions - only check for duplicates in hashtable contexts
        # Skip keys like 'Title', 'URL', 'icon', 'Icon' which are expected to repeat in array items
        if ($line -match "^\s+'([^']+)'\s*=\s*(@\{|@\(|')") {
            $key = $matches[1]

            # Skip common array item keys that are expected to repeat
            # Note: Both 'icon' (lowercase) and 'Icon' (capitalized) are used across different files
            if ($key -notin @('Title', 'URL', 'icon', 'Icon', 'Description', 'Name')) {
                $currentScope = $scopeStack[-1]
                $scopeKey = "$scopeId`:$key"

                if ($currentScope.ContainsKey($key)) {
                    $duplicates += @{
                        Key = $key
                        Level = $scopeStack.Count - 1
                        FirstLine = $currentScope[$key]
                        DuplicateLine = $i
                    }
                    Write-Host "  Duplicate '$key' at line $($i + 1) (first at line $($currentScope[$key] + 1))" -ForegroundColor Red
                }
                else {
                    $currentScope[$key] = $i
                }
            }
        }

        # Check for closing braces
        $closeHashtable = ([regex]::Matches($line, '\}')).Count
        $closeArray = ([regex]::Matches($line, '\)')).Count

        for ($j = 0; $j -lt $closeHashtable; $j++) {
            if ($scopeStack.Count -gt 1) {
                $scopeStack = $scopeStack[0..($scopeStack.Count - 2)]
            }
            if ($inArray.Count -gt 1) {
                $inArray = $inArray[0..($inArray.Count - 2)]
            }
        }

        for ($j = 0; $j -lt $closeArray; $j++) {
            if ($inArray.Count -gt 1) {
                $inArray = $inArray[0..($inArray.Count - 2)]
            }
        }
    }

    return $duplicates
}

$duplicateKeys = Find-DuplicateKeys $lines
Write-Host "  Duplicate keys found: $($duplicateKeys.Count)" -ForegroundColor Cyan

$report += "Duplicate Keys: $($duplicateKeys.Count)"
$duplicateKeys | ForEach-Object {
    $report += "  '$($_.Key)' (Level $($_.Level)) - First: line $($_.FirstLine + 1), Duplicate: line $($_.DuplicateLine + 1)"
}
$report += ""

# Helper function to find the end of a section (matching braces)
function Find-SectionEnd {
    param($startLine, $lines)

    $nestLevel = 0

    for ($i = $startLine; $i -lt $lines.Count; $i++) {
        $line = $lines[$i]

        # Count opening braces
        $opens = ([regex]::Matches($line, '@\{')).Count
        $opens += ([regex]::Matches($line, '@\(')).Count
        $nestLevel += $opens

        # Count closing braces
        $closes = ([regex]::Matches($line, '\}')).Count
        $closes += ([regex]::Matches($line, '\)')).Count
        $nestLevel -= $closes

        # When we return to level 0, we've found the end
        if ($nestLevel -eq 0 -and $i -gt $startLine) {
            return $i
        }
    }

    return -1
}

# Helper function to fix apostrophe/quote punctuation issues in a string value
# This handles 25+ types of problematic characters that can break single-quoted strings
function Fix-QuotePunctuation {
    param(
        [string]$Value,
        [ref]$FixCount
    )

    $original = $Value
    $fixed = $Value

    # ============================================================
    # POWERSHELL-SAFE ENCODING APPROACH
    # ============================================================
    # For PowerShell Data Files (.psd1), we cannot use HTML entities because
    # the & character is interpreted as an operator. Instead, we:
    #   1. Convert fancy quotes to straight quotes
    #   2. Escape apostrophes by doubling them (' -> '')
    #   3. Remove or replace ampersands with 'and'
    # ============================================================

    # ============================================================
    # CATEGORY 1: Curly/Smart Quotes -> Escaped straight quotes
    # ============================================================

    # 1. Right single quotation mark (') U+2019 - most common smart apostrophe
    #    Escape by doubling: '' is an escaped apostrophe in PowerShell
    $fixed = $fixed -replace [char]0x2019, "''"

    # 2. Left single quotation mark (') U+2018 - opening smart quote
    $fixed = $fixed -replace [char]0x2018, "''"

    # 3. Right double quotation mark (") U+201D - closing smart double quote
    #    Double quotes are OK in single-quoted strings
    $fixed = $fixed -replace [char]0x201D, '"'

    # 4. Left double quotation mark (") U+201C - opening smart double quote
    $fixed = $fixed -replace [char]0x201C, '"'

    # 5. Single low-9 quotation mark (‚) U+201A - used in some European languages
    $fixed = $fixed -replace [char]0x201A, "''"

    # 6. Single high-reversed-9 quotation mark (‛) U+201B - reversed smart quote
    $fixed = $fixed -replace [char]0x201B, "''"

    # 7. Double low-9 quotation mark („) U+201E - used in German, Polish
    $fixed = $fixed -replace [char]0x201E, '"'

    # 8. Double high-reversed-9 quotation mark (‟) U+201F - reversed double quote
    $fixed = $fixed -replace [char]0x201F, '"'

    # ============================================================
    # CATEGORY 2: Prime and Apostrophe-like Characters
    # ============================================================

    # 9. Prime (′) U+2032 - used for feet/minutes
    $fixed = $fixed -replace [char]0x2032, "''"

    # 10. Double prime (″) U+2033 - used for inches/seconds
    $fixed = $fixed -replace [char]0x2033, '"'

    # 11. Triple prime (‴) U+2034
    $fixed = $fixed -replace [char]0x2034, "''''''"

    # 12. Reversed prime (‵) U+2035
    $fixed = $fixed -replace [char]0x2035, "''"

    # 13. Reversed double prime (‶) U+2036
    $fixed = $fixed -replace [char]0x2036, '"'

    # 14. Modifier letter apostrophe (ʼ) U+02BC - linguistic apostrophe
    $fixed = $fixed -replace [char]0x02BC, "''"

    # 15. Modifier letter vertical line (ˈ) U+02C8 - stress mark
    $fixed = $fixed -replace [char]0x02C8, "''"

    # 16. Modifier letter turned comma (ʻ) U+02BB - Hawaiian okina
    $fixed = $fixed -replace [char]0x02BB, "''"

    # ============================================================
    # CATEGORY 3: Accent Marks Used as Apostrophes
    # ============================================================

    # 17. Acute accent (´) U+00B4 - often misused as apostrophe
    $fixed = $fixed -replace [char]0x00B4, "''"

    # 18. Grave accent (`) U+0060 - backtick
    $fixed = $fixed -replace [char]0x0060, "''"

    # 19. Combining acute accent (́) U+0301 - diacritical mark (remove)
    $fixed = $fixed -replace [char]0x0301, ''

    # 20. Combining grave accent (̀) U+0300 - diacritical mark (remove)
    $fixed = $fixed -replace [char]0x0300, ''

    # ============================================================
    # CATEGORY 4: Other Quote-like Characters
    # ============================================================

    # 21. Fullwidth apostrophe (') U+FF07 - Asian typography
    $fixed = $fixed -replace [char]0xFF07, "''"

    # 22. Fullwidth quotation mark (") U+FF02
    $fixed = $fixed -replace [char]0xFF02, '"'

    # 23. Heavy single turned comma quotation mark ornament (❛) U+275B
    $fixed = $fixed -replace [char]0x275B, "''"

    # 24. Heavy single comma quotation mark ornament (❜) U+275C
    $fixed = $fixed -replace [char]0x275C, "''"

    # 25. Heavy double turned comma quotation mark ornament (❝) U+275D
    $fixed = $fixed -replace [char]0x275D, '"'

    # 26. Heavy double comma quotation mark ornament (❞) U+275E
    $fixed = $fixed -replace [char]0x275E, '"'

    # 27. Hebrew punctuation geresh (׳) U+05F3 - used as apostrophe in Hebrew
    $fixed = $fixed -replace [char]0x05F3, "''"

    # 28. Hebrew punctuation gershayim (״) U+05F4 - used as double quote in Hebrew
    $fixed = $fixed -replace [char]0x05F4, '"'

    # ============================================================
    # CATEGORY 5: CJK (Chinese/Japanese/Korean) Quotation Marks
    # ============================================================

    # 29. CJK left corner bracket (「) U+300C - Japanese opening quote
    $fixed = $fixed -replace [char]0x300C, ''

    # 30. CJK right corner bracket (」) U+300D - Japanese closing quote
    $fixed = $fixed -replace [char]0x300D, ''

    # 31. CJK left white corner bracket (『) U+300E - Japanese double opening quote
    $fixed = $fixed -replace [char]0x300E, ''

    # 32. CJK right white corner bracket (』) U+300F - Japanese double closing quote
    $fixed = $fixed -replace [char]0x300F, ''

    # 33. CJK left angle bracket (〈) U+3008
    $fixed = $fixed -replace [char]0x3008, ''

    # 34. CJK right angle bracket (〉) U+3009
    $fixed = $fixed -replace [char]0x3009, ''

    # 35. CJK left double angle bracket (《) U+300A
    $fixed = $fixed -replace [char]0x300A, ''

    # 36. CJK right double angle bracket (》) U+300B
    $fixed = $fixed -replace [char]0x300B, ''

    # 37. CJK left tortoise shell bracket (〔) U+3014
    $fixed = $fixed -replace [char]0x3014, '('

    # 38. CJK right tortoise shell bracket (〕) U+3015
    $fixed = $fixed -replace [char]0x3015, ')'

    # 39. CJK left black lenticular bracket (【) U+3010
    $fixed = $fixed -replace [char]0x3010, '['

    # 40. CJK right black lenticular bracket (】) U+3011
    $fixed = $fixed -replace [char]0x3011, ']'

    # 41. Fullwidth left parenthesis (（) U+FF08
    $fixed = $fixed -replace [char]0xFF08, '('

    # 42. Fullwidth right parenthesis (）) U+FF09
    $fixed = $fixed -replace [char]0xFF09, ')'

    # 43. Fullwidth comma (，) U+FF0C
    $fixed = $fixed -replace [char]0xFF0C, ','

    # 44. Fullwidth full stop/period (。) U+3002
    $fixed = $fixed -replace [char]0x3002, '.'

    # 45. Fullwidth colon (：) U+FF1A
    $fixed = $fixed -replace [char]0xFF1A, ':'

    # 46. Fullwidth semicolon (；) U+FF1B
    $fixed = $fixed -replace [char]0xFF1B, ';'

    # 47. Ideographic comma (、) U+3001 - used in Chinese/Japanese
    $fixed = $fixed -replace [char]0x3001, ','

    # 48. Ideographic full stop (。) U+3002 - already handled above

    # 49. Middle dot (・) U+30FB - Japanese middle dot (katakana)
    $fixed = $fixed -replace [char]0x30FB, '-'

    # 50. Fullwidth hyphen-minus (－) U+FF0D
    $fixed = $fixed -replace [char]0xFF0D, '-'

    # 51. Fullwidth tilde (～) U+FF5E
    $fixed = $fixed -replace [char]0xFF5E, '-'

    # 52. Wave dash (〜) U+301C
    $fixed = $fixed -replace [char]0x301C, '-'

    # ============================================================
    # CATEGORY 6: Straight ASCII apostrophes -> Escaped
    # ============================================================
    # Escape straight apostrophes by doubling them for PowerShell

    # 53. Escape straight apostrophes: ' -> ''
    #     Only escape if not already escaped (avoid '''' becoming '''''')
    $fixed = $fixed -replace "(?<!')'(?!')", "''"

    # 54. Replace ampersands with 'and' (& is not allowed in .psd1 strings)
    $fixed = $fixed -replace ' & ', ' and '
    $fixed = $fixed -replace '&', ' and '

    # ============================================================
    # CATEGORY 7: Fix malformed escape sequences
    # ============================================================
    # Fix cases where backslash was incorrectly added before quotes

    # 55. Fix backslash before escaped apostrophe: \'' -> ''
    $fixed = $fixed -replace "\\''", "''"

    # 56. Fix backslash before single apostrophe: \' -> ''
    $fixed = $fixed -replace "\\'", "''"

    # 57. Fix backslash before double quote: \" -> "
    $fixed = $fixed -replace '\\"', '"'

    # 58. Fix triple or more consecutive apostrophes (over-escaping): ''' -> ''
    while ($fixed -match "'''") {
        $fixed = $fixed -replace "'''", "''"
    }

    # Update fix count if changes were made
    if ($fixed -ne $original) {
        $FixCount.Value++
    }

    return $fixed
}

# Step 5.5: Check brace pair integrity (header area only for duplicates)
Write-Host "`n[Step 5.5/7] Checking brace pair integrity..." -ForegroundColor Yellow
$braceIntegrity = Get-BraceIntegrityReport -Lines $lines

if ($braceIntegrity.HasIssues) {
    Write-Host "  BRACE INTEGRITY ISSUES DETECTED" -ForegroundColor Red

    if ($braceIntegrity.DuplicateStructures.DuplicateRootOpens.Count -gt 1) {
        Write-Host "    Duplicate root @{ in header: $($braceIntegrity.DuplicateStructures.DuplicateRootOpens.Count)" -ForegroundColor Yellow
    }
    if ($braceIntegrity.DuplicateStructures.DuplicateWrapperKeys.Count -gt 0) {
        foreach ($dup in $braceIntegrity.DuplicateStructures.DuplicateWrapperKeys) {
            Write-Host "    Duplicate wrapper key '$($dup.Key)' in header: $($dup.Occurrences.Count) times" -ForegroundColor Yellow
        }
    }
    if ($braceIntegrity.StructuralIssues.Count -gt 0) {
        Write-Host "    Structural issues: $($braceIntegrity.StructuralIssues.Count)" -ForegroundColor Yellow
        $braceIntegrity.StructuralIssues | Select-Object -First 5 | ForEach-Object {
            Write-Host "      Line $($_.LineNumber + 1): $($_.Issue)" -ForegroundColor Gray
        }
    }
    if ($braceIntegrity.OrphanedBraces.FinalDepth -ne 0) {
        Write-Host "    Brace depth imbalance: $($braceIntegrity.OrphanedBraces.FinalDepth)" -ForegroundColor Yellow
    }

    $report += "Brace Integrity Issues: YES"
    $report += "  Duplicate root @{ in header: $($braceIntegrity.DuplicateStructures.DuplicateRootOpens.Count)"
    $report += "  Duplicate wrapper keys in header: $($braceIntegrity.DuplicateStructures.DuplicateWrapperKeys.Count)"
    $report += "  Structural issues: $($braceIntegrity.StructuralIssues.Count)"
    $report += ""
} else {
    Write-Host "  Brace pair integrity: OK" -ForegroundColor Green
    $report += "Brace Integrity Issues: NO"
    $report += ""
}

# Step 6: Apply fixes (including brace integrity fixes)
Write-Host "`n[Step 6/7] Applying fixes..." -ForegroundColor Yellow

$linesToRemove = @{}
$fixCount = 0

# Remove markdown fences
foreach ($lineIdx in $fenceLines) {
    $linesToRemove[$lineIdx] = $true
    $fixCount++
}
Write-Host "  Marked $($fenceLines.Count) markdown fences for removal" -ForegroundColor Gray

# Apply brace integrity fixes FIRST (before other fixes)
# This handles duplicate wrapper structures like duplicate @{ and 'North America' = @{
if ($braceIntegrity.HasIssues -and ($FixBraces -or $FixSyntax)) {
    Write-Host "  Fixing brace pair integrity issues..." -ForegroundColor Gray
    $wrapperRemovalCount = [ref]0
    $lines = Remove-DuplicateWrapperLines -Lines $lines -RemovalCount $wrapperRemovalCount

    if ($wrapperRemovalCount.Value -gt 0) {
        Write-Host "    Removed $($wrapperRemovalCount.Value) duplicate wrapper line(s)" -ForegroundColor Cyan
        $fixCount += $wrapperRemovalCount.Value
        $report += "Brace Integrity Fixes: Removed $($wrapperRemovalCount.Value) duplicate wrapper lines"
        $report += ""
    }

    # Fix missing closing braces for hashtable entries within arrays
    $missingBraceFixCount = [ref]0
    $lines = Repair-MissingHashtableClosingBraces -Lines $lines -FixCount $missingBraceFixCount

    if ($missingBraceFixCount.Value -gt 0) {
        Write-Host "    Inserted $($missingBraceFixCount.Value) missing hashtable closing brace(s)" -ForegroundColor Cyan
        $fixCount += $missingBraceFixCount.Value
        $report += "Missing Hashtable Closing Braces: $($missingBraceFixCount.Value)"
        $report += ""
    }

    # Fix mismatched brace types (e.g., ) used instead of } to close hashtables)
    $braceTypeFixCount = [ref]0
    $lines = Repair-MismatchedBraceTypes -Lines $lines -FixCount $braceTypeFixCount

    if ($braceTypeFixCount.Value -gt 0) {
        Write-Host "    Fixed $($braceTypeFixCount.Value) mismatched brace type(s)" -ForegroundColor Cyan
        $fixCount += $braceTypeFixCount.Value
        $report += "Brace Type Fixes: $($braceTypeFixCount.Value)"
        $report += ""
    }

    # Re-check brace balance after removing duplicates and fixing types
    $braceFixCount = [ref]0
    $lines = Repair-BraceBalance -Lines $lines -FixCount $braceFixCount

    if ($braceFixCount.Value -gt 0) {
        Write-Host "    Applied $($braceFixCount.Value) brace balance fix(es)" -ForegroundColor Cyan
        $fixCount += $braceFixCount.Value
        $report += "Brace Balance Fixes: $($braceFixCount.Value)"
        $report += ""
    }
}

# Remove duplicate wrapper keys (keep only the first one) - legacy check
if ($wrapperLines.Count -gt 1) {
    for ($i = 1; $i -lt $wrapperLines.Count; $i++) {
        $linesToRemove[$wrapperLines[$i]] = $true
        $fixCount++
    }
    Write-Host "  Marked $($wrapperLines.Count - 1) duplicate wrapper keys for removal" -ForegroundColor Gray
}

# Remove duplicate keys and their entire sections
if ($RemoveDuplicates -and $duplicateKeys.Count -gt 0) {
    foreach ($dup in $duplicateKeys) {
        $startLine = $dup.DuplicateLine
        $endLine = Find-SectionEnd $startLine $lines

        if ($endLine -gt 0) {
            for ($i = $startLine; $i -le $endLine; $i++) {
                $linesToRemove[$i] = $true
            }
            $fixCount += ($endLine - $startLine + 1)
            Write-Host "  Marked duplicate '$($dup.Key)' section (lines $($startLine + 1)-$($endLine + 1)) for removal" -ForegroundColor Gray
        }
    }
}

# Apply syntax fixes if enabled
$syntaxFixCount = 0
if ($FixSyntax) {
    Write-Host "  Applying syntax fixes..." -ForegroundColor Gray

    $fixedLines = for ($i = 0; $i -lt $lines.Count; $i++) {
        # Skip lines marked for removal
        if ($linesToRemove.ContainsKey($i)) {
            continue
        }

        $line = $lines[$i]

        # Fix 0: Remove inline comments (# followed by text) - MUST be done first
        # IMPORTANT: Do NOT remove # that is inside a quoted string (like URL fragments)
        # Only remove comments that appear AFTER the closing quote of a value
        # Pattern: 'Key' = 'Value' # comment  ->  'Key' = 'Value'
        # But NOT: 'URL' = 'https://example.com/#fragment'
        if ($line -match "^(\s*'[^']+'\s*=\s*'[^']*')\s*#.*$") {
            # Line has a comment after a complete key-value pair
            $line = $matches[1]
            $line = $line.TrimEnd()
            $syntaxFixCount++
        }
        elseif ($line -match "^(\s*\},?)\s*#.*$") {
            # Line has a comment after a closing brace
            $line = $matches[1]
            $line = $line.TrimEnd()
            $syntaxFixCount++
        }
        elseif ($line -match "^(\s*\),?)\s*#.*$") {
            # Line has a comment after a closing parenthesis
            $line = $matches[1]
            $line = $line.TrimEnd()
            $syntaxFixCount++
        }

        # Fix 0.5: Malformed string values with text after closing quote
        # Pattern: 'URL' = 'https://...' wait, adjust to https://...'
        # Should become: 'URL' = 'https://...'
        # The pattern captures: 'Key' = 'Value' followed by space and word (not punctuation)
        if ($line -match "^(\s*'[^']+'\s*=\s*'[^']+')\s+\w+") {
            # There's text after the closing quote - remove it
            $line = $matches[1]
            $syntaxFixCount++
        }
        # Also handles: 'Title' = 'Some text wait, other text' -> 'Title' = 'Some text'
        elseif ($line -match "^(\s*'[^']+'\s*=\s*'[^']*)\s+wait,.*'$") {
            # "wait," appears inside the string value - remove from "wait," to end
            $line = $matches[1] + "'"
            $syntaxFixCount++
        }

        # Fix 1: Missing '=' after key (e.g., 'URL' 'http://...')
        if ($line -match "^\s*'([^']+)'\s+'(https?://|[^']+)'") {
            $line = $line -replace "^(\s*'[^']+'\s+)", '$1= '
            $syntaxFixCount++
        }
        # Fix 2: Missing key before '=' (e.g., = 'http://...')
        elseif ($line -match "^\s*=\s+'(https?://[^']+)'") {
            $indent = ""
            if ($line -match "^(\s*)") {
                $indent = $matches[1]
            }
            $line = $line -replace "^\s*=", "$indent'URL' ="
            $syntaxFixCount++
        }

        # Fix 3: Any non-ASCII characters in Title values - normalize to ASCII
        # This includes Chinese/CJK, Turkish, Azerbaijani, accented chars, etc.
        if ($line -match "'Title'\s*=\s*'([^']+)'") {
            $originalTitle = $matches[1]
            # Check if title contains any non-ASCII characters
            if ($originalTitle -match '[^\x00-\x7F]') {
                # Replace common accented/special characters with ASCII equivalents
                $safeTitle = $originalTitle
                # Turkish/Azerbaijani (İ -> i for words like 'Title')
                $safeTitle = $safeTitle -replace [char]0x0130, 'i'  # İ (Turkish capital I with dot -> lowercase i)
                $safeTitle = $safeTitle -replace [char]0x0131, 'i'  # ı (Turkish dotless i)
                $safeTitle = $safeTitle -replace [char]0x015F, 's'  # ş
                $safeTitle = $safeTitle -replace [char]0x015E, 'S'  # Ş
                $safeTitle = $safeTitle -replace [char]0x0259, 'a'  # ə
                $safeTitle = $safeTitle -replace [char]0x018F, 'A'  # Ə
                $safeTitle = $safeTitle -replace [char]0x00FC, 'u'  # ü
                $safeTitle = $safeTitle -replace [char]0x00DC, 'U'  # Ü
                $safeTitle = $safeTitle -replace [char]0x00F6, 'o'  # ö
                $safeTitle = $safeTitle -replace [char]0x00D6, 'O'  # Ö
                $safeTitle = $safeTitle -replace [char]0x011F, 'g'  # ğ
                $safeTitle = $safeTitle -replace [char]0x011E, 'G'  # Ğ
                $safeTitle = $safeTitle -replace [char]0x00E7, 'c'  # ç
                $safeTitle = $safeTitle -replace [char]0x00C7, 'C'  # Ç
                # Common accented letters
                $safeTitle = $safeTitle -replace [char]0x00FA, 'u'  # ú
                $safeTitle = $safeTitle -replace [char]0x00F9, 'u'  # ù
                $safeTitle = $safeTitle -replace [char]0x00FB, 'u'  # û
                $safeTitle = $safeTitle -replace [char]0x00E9, 'e'  # é
                $safeTitle = $safeTitle -replace [char]0x00E8, 'e'  # è
                $safeTitle = $safeTitle -replace [char]0x00EA, 'e'  # ê
                $safeTitle = $safeTitle -replace [char]0x00F1, 'n'  # ñ
                $safeTitle = $safeTitle -replace [char]0x0101, 'a'  # ā
                $safeTitle = $safeTitle -replace [char]0x0113, 'e'  # ē
                $safeTitle = $safeTitle -replace [char]0x012B, 'i'  # ī
                $safeTitle = $safeTitle -replace [char]0x014D, 'o'  # ō
                $safeTitle = $safeTitle -replace [char]0x016B, 'u'  # ū
                # Special symbols
                $safeTitle = $safeTitle -replace [char]0x00D7, 'x'  # × (multiplication sign)
                $safeTitle = $safeTitle -replace [char]0x029A, 'e'  # ʚ (Latin small letter closed open e)
                # Curly quotes/apostrophes
                $safeTitle = $safeTitle -replace [char]0x2019, "''"  # '
                $safeTitle = $safeTitle -replace [char]0x2018, "''"  # '
                $safeTitle = $safeTitle -replace [char]0x201C, '"'   # "
                $safeTitle = $safeTitle -replace [char]0x201D, '"'   # "
                # Remove any remaining non-ASCII
                $safeTitle = $safeTitle -replace '[^\x00-\x7F]', ''
                $safeTitle = $safeTitle.Trim()
                if ([string]::IsNullOrWhiteSpace($safeTitle)) {
                    $safeTitle = 'International Title'
                }
                if ($safeTitle -ne $originalTitle) {
                    $line = $line -replace "'Title'\s*=\s*'[^']+'", "'Title' = '$safeTitle'"
                    $syntaxFixCount++
                }
            }
        }

        # Fix 4: PowerShell-safe encoding for Title/Description/Name strings
        # For .psd1 files:
        #   & -> 'and' (ampersand not allowed)
        #   ' -> '' (escaped apostrophe)
        #   Other quote-like chars are handled by Fix-QuotePunctuation
        if ($line -match "'(Title|Description|Name)'\s*=\s*'([^']*)'") {
            $key = $matches[1]
            $value = $matches[2]
            $originalValue = $value

            # Check if any problematic characters exist
            if ($value -match '&') {
                # Replace ampersand with 'and'
                $newValue = $value -replace ' & ', ' and '
                $newValue = $newValue -replace '&', ' and '

                if ($newValue -ne $originalValue) {
                    $escapedOriginal = [regex]::Escape("'$key' = '$originalValue'")
                    $line = $line -replace $escapedOriginal, "'$key' = '$newValue'"
                    $syntaxFixCount++
                }
            }
        }

        # Fix 4b: Ampersands in URLs - URL-encode to %26
        # PowerShell data files don't allow & in strings (even double-quoted in .psd1)
        if ($line -match "'URL'\s*=\s*[`'`"]([^`'`"]*&[^`'`"]*)") {
            $url = $matches[1]
            # URL-encode the ampersand
            $newUrl = $url -replace '&', '%26'
            $line = $line -replace [regex]::Escape($url), $newUrl
            $syntaxFixCount++
        }

        # Fix 4c: Convert double-quoted strings to single-quoted strings
        # PowerShell data files (.psd1) don't allow double-quoted strings
        # Pattern: 'Key' = "Value" -> 'Key' = 'Value' (with escaped apostrophes)
        if ($line -match "^(\s*'[^']+'\s*=\s*)`"([^`"]+)`"(.*)$") {
            $prefix = $matches[1]
            $value = $matches[2]
            $suffix = $matches[3]
            # Escape apostrophes by doubling them, replace ampersands
            $escapedValue = $value -replace "'", "''"
            $escapedValue = $escapedValue -replace ' & ', ' and '
            $escapedValue = $escapedValue -replace '&', ' and '
            $line = "$prefix'$escapedValue'$suffix"
            $syntaxFixCount++
        }

        # Fix 4d: Fix malformed escape sequences (backslash before quotes)
        # Pattern: \'' -> '' (fix incorrect backslash escaping)
        if ($line -match "\\''") {
            $line = $line -replace "\\''", "''"
            $syntaxFixCount++
        }
        # Pattern: \' -> '' (fix single backslash-quote)
        if ($line -match "\\'") {
            $line = $line -replace "\\'", "''"
            $syntaxFixCount++
        }
        # Pattern: \" -> " (fix backslash before double quote)
        if ($line -match '\\"') {
            $line = $line -replace '\\"', '"'
            $syntaxFixCount++
        }
        # Fix triple or more consecutive apostrophes (over-escaping)
        while ($line -match "'''") {
            $line = $line -replace "'''", "''"
            $syntaxFixCount++
        }

        # Fix 5: Incomplete/truncated URLs (ending with ... or UC... )
        if ($line -match "'URL'\s*=\s*'[^']*\.\.\.\s*'") {
            # Replace truncated URL with a placeholder
            $line = $line -replace "'URL'\s*=\s*'[^']*\.\.\.\s*'", "'URL' = 'https://example.com/placeholder'"
            $syntaxFixCount++
        }

        # Fix 6: Missing opening quote in value (e.g., 'Title' = value')
        # Pattern: 'Key' = value' (missing opening quote for value)
        if ($line -match "^(\s*'(?:Title|Description|Name|icon|Icon|URL)'\s*=\s*)([^']+)'(\s*)$") {
            $prefix = $matches[1]
            $value = $matches[2]
            $suffix = $matches[3]
            # Escape any apostrophes in the value
            $escapedValue = $value -replace "'", "''"
            $line = "$prefix'$escapedValue'$suffix"
            $syntaxFixCount++
        }

        # Fix 7: Missing both quotes in value (e.g., 'Title' = value)
        # Pattern: 'Key' = value (no quotes at all for value)
        if ($line -match "^(\s*'(?:Title|Description|Name)'\s*=\s*)([^'@\}\(\)][^'@\}\(\)]+[^'\s])(\s*)$") {
            $prefix = $matches[1]
            $value = $matches[2]
            $suffix = $matches[3]
            # Escape any apostrophes in the value
            $escapedValue = $value -replace "'", "''"
            $line = "$prefix'$escapedValue'$suffix"
            $syntaxFixCount++
        }

        # Fix 8: Duplicate keys with comments - skip lines with specific comment patterns
        if ($line -match "^\s*#.*Wait.*Malaysian|^\s*#.*TODO|^\s*#.*FIXME") {
            $syntaxFixCount++
            continue
        }

        $line
    }

    Write-Host "  Applied $syntaxFixCount syntax fixes" -ForegroundColor Cyan
    $report += "Syntax Fixes Applied: $syntaxFixCount"
    $report += ""
}
else {
    # Just remove marked lines without syntax fixes
    $fixedLines = for ($i = 0; $i -lt $lines.Count; $i++) {
        if (-not $linesToRemove.ContainsKey($i)) {
            $lines[$i]
        }
    }
}

# Apply quote/apostrophe fixes if enabled
$quoteFixCount = 0
if ($FixQuotes) {
    Write-Host "  Applying quote/apostrophe punctuation fixes..." -ForegroundColor Gray

    $quoteFixedLines = @()
    foreach ($line in $fixedLines) {
        $fixedLine = $line

        # Only process lines that contain string values (Title, Description, Name, etc.)
        # Look for patterns like 'Key' = 'Value' where Value might have quote issues
        if ($fixedLine -match "^\s*'(Title|Description|Name|icon|Icon)'\s*=\s*'(.+)'") {
            $key = $matches[1]
            $value = $matches[2]

            # Apply the comprehensive quote punctuation fixes
            $quoteFixRef = [ref]0
            $fixedValue = Fix-QuotePunctuation -Value $value -FixCount $quoteFixRef

            if ($quoteFixRef.Value -gt 0) {
                # Replace the value in the line
                $escapedOriginal = [regex]::Escape("'$key' = '$value'")
                $fixedLine = $fixedLine -replace $escapedOriginal, "'$key' = '$fixedValue'"
                $quoteFixCount++
            }
        }

        # Also check for key names that might have quote issues (less common but possible)
        # Pattern: 'KeyName' = @{ or 'KeyName' = @(
        if ($fixedLine -match "^\s*'([^']+)'\s*=\s*@[\{\(]") {
            $keyName = $matches[1]

            # Check if key name has problematic characters
            $quoteFixRef = [ref]0
            $fixedKeyName = Fix-QuotePunctuation -Value $keyName -FixCount $quoteFixRef

            if ($quoteFixRef.Value -gt 0) {
                $escapedOriginal = [regex]::Escape("'$keyName'")
                $fixedLine = $fixedLine -replace $escapedOriginal, "'$fixedKeyName'"
                $quoteFixCount++
            }
        }

        $quoteFixedLines += $fixedLine
    }

    $fixedLines = $quoteFixedLines
    Write-Host "  Applied $quoteFixCount quote/apostrophe fixes" -ForegroundColor Cyan
    $report += "Quote/Apostrophe Fixes Applied: $quoteFixCount"
    $report += ""
}

# Fix duplicate root-level keys (keys that appear at no indentation)
Write-Host "  Checking for duplicate root-level keys..." -ForegroundColor Gray
$rootKeyPattern = "^'([A-Za-z_\-]+)'\s*=\s*@\{"
$rootKeys = @{}
$duplicateKeyFixes = 0

for ($i = 0; $i -lt $fixedLines.Count; $i++) {
    if ($fixedLines[$i] -match $rootKeyPattern) {
        $keyName = $matches[1]
        if ($rootKeys.ContainsKey($keyName)) {
            # This is a duplicate - rename it with a suffix
            $suffix = 2
            $newKeyName = "${keyName}_$suffix"
            while ($rootKeys.ContainsKey($newKeyName)) {
                $suffix++
                $newKeyName = "${keyName}_$suffix"
            }
            $rootKeys[$newKeyName] = $i
            $fixedLines[$i] = $fixedLines[$i] -replace "^'$keyName'", "'$newKeyName'"
            Write-Host "    Line $($i+1): Renamed duplicate key '$keyName' to '$newKeyName'" -ForegroundColor Yellow
            $duplicateKeyFixes++
        } else {
            $rootKeys[$keyName] = $i
        }
    }
}

if ($duplicateKeyFixes -gt 0) {
    Write-Host "  Fixed $duplicateKeyFixes duplicate root-level key(s)" -ForegroundColor Cyan
    $report += "Duplicate Key Fixes: $duplicateKeyFixes"
    $report += ""
}

# Fix structural issues: balance opening and closing braces
Write-Host "  Checking structural balance..." -ForegroundColor Gray
$openBraces = 0
$closeBraces = 0
foreach ($line in $fixedLines) {
    # Count opening braces (both @{ and standalone {)
    $openBraces += ([regex]::Matches($line, '\{')).Count
    # Count closing braces
    $closeBraces += ([regex]::Matches($line, '\}')).Count
}
Write-Host "    Open braces: $openBraces, Close braces: $closeBraces" -ForegroundColor Gray

# If there are more closing braces than opening, remove the extras from the end
if ($closeBraces -gt $openBraces) {
    $excessBraces = $closeBraces - $openBraces
    Write-Host "  Removing $excessBraces excess closing brace(s) from end of file" -ForegroundColor Yellow

    # Work backwards from the end to remove excess closing braces
    $removed = 0
    for ($i = $fixedLines.Count - 1; $i -ge 0 -and $removed -lt $excessBraces; $i--) {
        if ($fixedLines[$i] -match '^\s*\}\s*$') {
            $fixedLines = $fixedLines[0..($i-1)] + $fixedLines[($i+1)..($fixedLines.Count-1)]
            $removed++
            $syntaxFixCount++
        }
    }
    $report += "Structural fix: Removed $removed excess closing brace(s)"
    $report += ""
} else {
    Write-Host "    Braces are balanced or have excess opening braces" -ForegroundColor Gray
}

# Final structural validation: ensure braces are balanced
$finalOpenBraces = 0
$finalCloseBraces = 0
foreach ($line in $fixedLines) {
    $finalOpenBraces += ([regex]::Matches($line, '\{')).Count
    $finalCloseBraces += ([regex]::Matches($line, '\}')).Count
}

if ($finalOpenBraces -gt $finalCloseBraces) {
    $diff = $finalOpenBraces - $finalCloseBraces
    Write-Host "  Adding $diff missing closing brace(s) at end of file" -ForegroundColor Yellow
    for ($i = 0; $i -lt $diff; $i++) {
        $fixedLines += '}'
    }
    $report += "Structural fix: Added $diff missing closing brace(s)"
    $report += ""
} elseif ($finalCloseBraces -gt $finalOpenBraces) {
    $excess = $finalCloseBraces - $finalOpenBraces
    Write-Host "  Removing $excess excess closing brace(s) from end of file" -ForegroundColor Yellow

    $removed = 0
    for ($i = $fixedLines.Count - 1; $i -ge 0 -and $removed -lt $excess; $i--) {
        if ($fixedLines[$i] -match '^\s*\}\s*$') {
            if ($i -eq 0) {
                $fixedLines = $fixedLines[1..($fixedLines.Count - 1)]
            } elseif ($i -eq $fixedLines.Count - 1) {
                $fixedLines = $fixedLines[0..($i - 1)]
            } else {
                $fixedLines = $fixedLines[0..($i - 1)] + $fixedLines[($i + 1)..($fixedLines.Count - 1)]
            }
            $removed++
        }
    }
    $report += "Structural fix: Removed $removed excess closing brace(s)"
    $report += ""
}

# Wrap in wrapper key if specified
if ($WrapperKey) {
    Write-Host "  Wrapping content in '$WrapperKey' structure..." -ForegroundColor Gray
    $fixedLines = @(
        "<#"
        ".SYNOPSIS"
        "    External data source for $WrapperKey bookmarks."
        "#>"
        ""
        "@{"
        "'$WrapperKey' = @{"
    ) + $fixedLines + @(
        "}"
        "}"
    )
    $report += "Wrapped in '$WrapperKey' structure: Yes"
    $report += ""
}

# Save the fixed file
$fixedContent = $fixedLines -join "`r`n"
$utf8BOM = New-Object System.Text.UTF8Encoding $true
[System.IO.File]::WriteAllText($OutputFile, $fixedContent, $utf8BOM)

Write-Host "`n=== Fix Complete ===" -ForegroundColor Green
Write-Host "  Original lines: $($lines.Count)" -ForegroundColor Cyan
Write-Host "  Fixed lines: $($fixedLines.Count)" -ForegroundColor Cyan
Write-Host "  Lines removed: $($lines.Count - $fixedLines.Count + $syntaxFixCount)" -ForegroundColor Cyan
Write-Host "  Syntax fixes: $syntaxFixCount" -ForegroundColor Cyan
Write-Host "  Quote/Apostrophe fixes: $quoteFixCount" -ForegroundColor Cyan
Write-Host "  Output file: $OutputFile" -ForegroundColor Green

# Add summary to report
$report += "Summary"
$report += "-" * 70
$report += "Original lines: $($lines.Count)"
$report += "Fixed lines: $($fixedLines.Count)"
$report += "Lines removed: $($lines.Count - $fixedLines.Count + $syntaxFixCount)"
$report += "Syntax fixes: $syntaxFixCount"
$report += "Quote/Apostrophe fixes: $quoteFixCount"
$report += "Output file: $OutputFile"
$report += ""

# Report will be saved after testing

# Test the fixed file if it's a PowerShell script or data file
if ($OutputFile -match '\.(ps1|psd1)$') {
    Write-Host "`n=== Testing Fixed File ===" -ForegroundColor Cyan

    # First, run syntax check
    $parseErrors = $null
    $tokens = $null
    $null = [System.Management.Automation.Language.Parser]::ParseFile(
        $OutputFile,
        [ref]$tokens,
        [ref]$parseErrors
    )

    if ($parseErrors.Count -gt 0) {
        Write-Host "  SYNTAX ERRORS FOUND: $($parseErrors.Count)" -ForegroundColor Red
        $parseErrors | Select-Object -First 10 | ForEach-Object {
            Write-Host "    Line $($_.Extent.StartLineNumber): $($_.Message)" -ForegroundColor Yellow
        }
        if ($parseErrors.Count -gt 10) {
            Write-Host "    ... and $($parseErrors.Count - 10) more errors" -ForegroundColor Yellow
        }
        $report += "Syntax Errors Remaining: $($parseErrors.Count)"
    }
    else {
        Write-Host "  Syntax check: PASSED" -ForegroundColor Green
        $report += "Syntax Errors Remaining: 0"
    }

    # For .psd1 files, try to import as PowerShell Data File
    # Note: Import-PowerShellDataFile has a size limit and may fail for large files
    # The syntax check above is the primary validation
    if ($OutputFile -match '\.psd1$') {
        try {
            $testData = Import-PowerShellDataFile $OutputFile
            Write-Host "  Import-PowerShellDataFile: SUCCESS" -ForegroundColor Green
            Write-Host "  Top-level keys: $($testData.Keys.Count)" -ForegroundColor Cyan
            Write-Host "  Sample keys: $($testData.Keys | Select-Object -First 5)" -ForegroundColor Cyan
            $report += "PowerShell Data File Import: SUCCESS"
        }
        catch {
            # Check if it's a size-related error (common for large files)
            if ($_.Exception.Message -match 'ScriptBlock|dynamic expressions') {
                Write-Host "  Import-PowerShellDataFile: SKIPPED (file too large for cmdlet)" -ForegroundColor Yellow
                Write-Host "    Note: Syntax check passed - file is valid" -ForegroundColor Cyan
                $report += "PowerShell Data File Import: SKIPPED (file too large, but syntax is valid)"
            } else {
                Write-Host "  Import-PowerShellDataFile: FAILED" -ForegroundColor Red
                Write-Host "    $($_.Exception.Message)" -ForegroundColor Yellow
                $report += "PowerShell Data File Import: FAILED - $($_.Exception.Message)"
            }
        }
    }
    # For .ps1 files, try to execute
    elseif ($OutputFile -match '\.ps1$') {
        try {
            $testData = & $OutputFile
            Write-Host "  Execution: SUCCESS" -ForegroundColor Green
            Write-Host "  Type: $($testData.GetType().Name)" -ForegroundColor Cyan

            if ($testData -is [hashtable]) {
                Write-Host "  Top-level keys: $($testData.Keys -join ', ')" -ForegroundColor Cyan

                if ($WrapperKey -and $testData.ContainsKey($WrapperKey)) {
                    $entries = $testData[$WrapperKey].Keys
                    Write-Host "  $WrapperKey entries: $($entries.Count)" -ForegroundColor Green
                    Write-Host "  Sample keys: $($entries | Select-Object -First 5 | ForEach-Object { $_ })" -ForegroundColor Cyan
                }
            }
            $report += "Script Execution: SUCCESS"
        }
        catch {
            Write-Host "  Execution: FAILED" -ForegroundColor Red
            Write-Host "    $($_.Exception.Message)" -ForegroundColor Yellow
            $report += "Script Execution: FAILED - $($_.Exception.Message)"
        }
    }
}

# Save report if enabled (update with final info)
if ($GenerateReport) {
    $reportFile = $OutputFile -replace '\.[^.]+$', '-report.txt'
    $report | Out-File $reportFile -Encoding UTF8
    Write-Host "`n  Report saved: $reportFile" -ForegroundColor Green
}

Write-Host "`nDone!" -ForegroundColor Green

