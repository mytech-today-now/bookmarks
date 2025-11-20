$data = Import-PowerShellDataFile -Path "$PSScriptRoot\links-sample.psd1"

Write-Host "=== Testing Education Category ===" -ForegroundColor Cyan
$education = $data['Education']
Write-Host "Education type: $($education.GetType().Name)" -ForegroundColor Yellow
Write-Host "Education keys: $($education.Keys -join ', ')" -ForegroundColor Yellow

foreach ($subfolderName in $education.Keys) {
    Write-Host "`nSubfolder: $subfolderName" -ForegroundColor Green
    $bookmarkGroup = $education[$subfolderName]
    Write-Host "  Type: $($bookmarkGroup.GetType().Name)" -ForegroundColor Yellow
    Write-Host "  Count: $($bookmarkGroup.Count)" -ForegroundColor Yellow
    
    foreach ($bookmark in $bookmarkGroup) {
        Write-Host "    Bookmark type: $($bookmark.GetType().Name)" -ForegroundColor Magenta
        Write-Host "    Title: $($bookmark.Title)" -ForegroundColor White
        Write-Host "    URL: $($bookmark.URL)" -ForegroundColor White
        Write-Host "    Icon: $($bookmark.Icon)" -ForegroundColor White
    }
}

Write-Host "`n=== Testing Media Downloading Category ===" -ForegroundColor Cyan
$mediaDownloading = $data['Media Downloading']
Write-Host "Media Downloading type: $($mediaDownloading.GetType().Name)" -ForegroundColor Yellow
Write-Host "Media Downloading keys: $($mediaDownloading.Keys -join ', ')" -ForegroundColor Yellow

$videoDownloaders = $mediaDownloading['Video Downloaders']
Write-Host "`nVideo Downloaders:" -ForegroundColor Green
Write-Host "  Type: $($videoDownloaders.GetType().Name)" -ForegroundColor Yellow
Write-Host "  Count: $($videoDownloaders.Count)" -ForegroundColor Yellow

foreach ($bookmark in $videoDownloaders) {
    Write-Host "    Title: $($bookmark.Title)" -ForegroundColor White
    Write-Host "    URL: $($bookmark.URL)" -ForegroundColor White
}

