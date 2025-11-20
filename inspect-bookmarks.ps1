$json = Get-Content "$env:LOCALAPPDATA\Google\Chrome\User Data\Default\Bookmarks" -Raw | ConvertFrom-Json
$mytech = $json.roots.bookmark_bar.children | Where-Object { $_.name -eq 'myTech.Today' }

function Show-BookmarkTree {
    param(
        [object]$Node,
        [int]$Depth = 0
    )
    
    $indent = "  " * $Depth
    
    if ($Node.type -eq 'folder') {
        Write-Host "$indent[FOLDER] $($Node.name) ($($Node.children.Count) items)" -ForegroundColor Cyan
        foreach ($child in $Node.children) {
            Show-BookmarkTree -Node $child -Depth ($Depth + 1)
        }
    } else {
        Write-Host "$indent[LINK] $($Node.name)" -ForegroundColor Yellow
        if ($Node.url) {
            Write-Host "$indent       -> $($Node.url)" -ForegroundColor DarkGray
        }
    }
}

if ($mytech) {
    Write-Host "=== myTech.Today Bookmark Structure ===" -ForegroundColor Green
    Show-BookmarkTree -Node $mytech -Depth 0
} else {
    Write-Host 'myTech.Today folder not found' -ForegroundColor Red
}

