# myTech.Today Bookmarks Manager

A comprehensive PowerShell solution for managing browser bookmarks across multiple browsers on Windows. This toolkit consists of several main components:

1. **`bookmarks.ps1`** - The main script that manages bookmark installation, removal, and restoration
2. **`links-sample.psd1`** - A curated collection of bookmarks organized into categories
3. **`europe.ps1`** - European regional news and information sources (39 countries/regions)
4. **`asia.psd1`** - Asian regional news and information sources (15 countries)

## Overview

The Bookmarks Manager builds and maintains a consistent **myTech.Today** bookmarks folder across all your browsers. It intelligently uses curated bookmarks from `links-sample.psd1` when available, merges external data sources (Europe, Asia), and falls back to auto-generated search-based links for categories without curated data.

### Key Features

- **Multi-Browser Support**: Works with Chromium-based browsers (Chrome, Edge, Brave, Vivaldi, Opera), Firefox-family browsers (Firefox, LibreWolf, Waterfox), and HTML-only browsers (Midori, Min)
- **Three Operation Modes**: Add, Remove, or Restore bookmark structures
- **Curated Bookmarks**: Uses high-quality, hand-picked bookmarks with favicons from `links-sample.psd1`
- **Regional Data Sources**: Includes comprehensive European (39 regions) and Asian (15 countries) news sources
- **Performance Optimizations**: Parallel favicon fetching, persistent caching, and skip-favicon mode for maximum speed
- **Auto-Generated Fallback**: Creates search-based bookmark groups for categories without curated data
- **Organized Hierarchy**: Bookmarks are organized into topic groups (SoftwareTools, WebServices, Entertainment, Other)
- **Local Resource Links**: Includes `file:///` links to myTech.Today logs, reports, and configuration folders
- **Automatic Backups**: Creates timestamped backups before making any changes
- **Detailed Logging**: Uses the shared `logging.ps1` module for comprehensive activity tracking

### Statistics

- **85 Total Categories** (31 from links-sample.psd1 + 39 European regions + 15 Asian countries)
- **3,257 Total Subfolders**
- **9,539 Total Bookmarks**

---

## File: `bookmarks.ps1`

### Description

The main PowerShell script that manages the myTech.Today bookmark structure across multiple browsers. It can add, remove, or restore bookmarks, and works differently depending on the browser type:

- **Chromium-based browsers**: Directly modifies the browser's `Bookmarks` JSON file
- **Firefox-family browsers**: Generates an importable `myTech.Today-bookmarks.html` file
- **HTML-only browsers**: Generates an importable HTML file

### Parameters

| Parameter | Type | Default | Description |
|-----------|------|---------|-------------|
| `-Mode` | String | `Add` | Operation mode: `Add`, `Remove`, or `Restore` |
| `-Browser` | String[] | `All` | Target browsers: `Chrome`, `Edge`, `Brave`, `Firefox`, `Vivaldi`, `Opera`, `OperaGX`, `LibreWolf`, `TorBrowser`, `Waterfox`, `Chromium`, `PaleMoon`, `UngoogledChromium`, `Midori`, `Min`, or `All` |
| `-BackupPath` | String | (none) | Path to backup file for Restore mode (JSON for Chromium, SQLite for Firefox) |
| `-CuratedLinksPath` | String | (auto) | Path to curated bookmark data file (.psd1 or .ps1). If omitted, searches for `links.psd1`, `links.ps1`, `links-sample.psd1`, or `links-sample.ps1` in the script folder |
| `-WhatIf` | Switch | (none) | Shows what would change without modifying any files |
| `-SkipFavicons` | Switch | (none) | Skip all favicon fetching for maximum speed (~2 seconds for 9,500+ bookmarks) |
| `-UseGoogleFavicons` | Switch | (none) | Use only Google's favicon service (faster and more reliable than direct fetching) |
| `-FaviconParallelism` | Int | `10` | Number of concurrent favicon downloads when fetching in parallel |

### Bookmark Structure

The script creates a hierarchical bookmark structure:

```
myTech.Today (root)
├── myTech.Today (link to https://mytech.today/)
├── myTech.Today tools-2025 (link to https://mytech.today/tools-2025)
├── Media Downloading (category)
│   ├── Video Downloaders (subfolder)
│   │   ├── Bookmark 1
│   │   └── Bookmark 2
│   └── Social Media Downloaders (subfolder)
├── Entertainment (topic group)
│   ├── Gaming (category)
│   ├── Education (category)
│   └── Finance (category)
├── SoftwareTools (topic group)
│   ├── Browsers (category)
│   ├── Development (category)
│   ├── Productivity (category)
│   └── ... (more categories)
├── WebServices (topic group)
│   ├── Cloud Storage (category)
│   ├── News (category)
│   └── ... (more categories)
├── Other (topic group)
│   └── ... (uncategorized items)
└── myTech.Today (local resources)
    ├── Logs (folder with file:/// links)
    ├── Reports (file:/// link)
    └── Config (file:/// link)
```

### Topic Groups

Categories are automatically organized into topic groups:

- **SoftwareTools**: Browsers, Development, Productivity, Media, Utilities, Security, Communication, Remote Access, Maintenance, Shortcuts
- **WebServices**: Cloud Storage, News, Social, Reference, Ecommerce, Health, Travel, Weather, Forums, Documentation, Backup
- **Entertainment**: Gaming, Education, Finance
- **Other**: All other categories (3D & CAD, AI, Audio Production, Networking, Runtime, Screen Recording, Video Editing, Writing, etc.)

### Curated vs Auto-Generated Bookmarks

The script uses a two-tier approach:

1. **Curated Bookmarks** (preferred): If a category exists in `links-sample.psd1` (or your custom `links.psd1`), the script uses those hand-picked bookmarks with favicons
2. **Auto-Generated Bookmarks** (fallback): If no curated data exists, the script generates search-based bookmark groups:
   - News and updates
   - Aggregators and comparisons
   - Ratings and reviews
   - Statistics and usage
   - Videos
   - How-tos and guides
   - Resources and documentation
   - Search engines (Google, DuckDuckGo, Bing, Brave Search, etc.)

### Usage Examples

```powershell
# Add myTech.Today bookmarks for all supported browsers
.\bookmarks\bookmarks.ps1 -Mode Add -Browser All

# Add bookmarks only for Chrome and Edge
.\bookmarks\bookmarks.ps1 -Mode Add -Browser Chrome,Edge

# Add bookmarks using a custom curated links file
.\bookmarks\bookmarks.ps1 -Mode Add -Browser All -CuratedLinksPath ".\my-custom-links.psd1"

# FAST MODE: Skip favicon fetching for maximum speed (~2 seconds)
.\bookmarks\bookmarks.ps1 -Mode Add -Browser All -SkipFavicons

# Use Google's favicon service only (faster and more reliable)
.\bookmarks\bookmarks.ps1 -Mode Add -Browser All -UseGoogleFavicons

# Preview changes without modifying any files
.\bookmarks\bookmarks.ps1 -Mode Add -Browser Chrome -WhatIf

# Remove the myTech.Today bookmark structure (dry run)
.\bookmarks\bookmarks.ps1 -Mode Remove -Browser All -WhatIf

# Remove bookmarks from Chrome only
.\bookmarks\bookmarks.ps1 -Mode Remove -Browser Chrome

# Restore Chrome bookmarks from a JSON backup file
.\bookmarks\bookmarks.ps1 -Mode Restore -Browser Chrome -BackupPath "C:\Users\YourUserName\myTech.Today\Backups\Chrome-Default\Bookmarks_20250101_120000.json"

# Restore Firefox bookmarks from a SQLite backup file
.\bookmarks\bookmarks.ps1 -Mode Restore -Browser Firefox -BackupPath "C:\Users\YourUserName\myTech.Today\Backups\Firefox\places_oyxj9ris.default-release_20250101_120000.sqlite"
```

### Supported Browsers

| Browser | Type | Update Method |
|---------|------|---------------|
| Chrome | Chromium | Direct JSON modification |
| Edge | Chromium | Direct JSON modification |
| Brave | Chromium | Direct JSON modification |
| Vivaldi | Chromium | Direct JSON modification |
| Opera | Chromium | Direct JSON modification |
| Opera GX | Chromium | Direct JSON modification |
| Chromium | Chromium | Direct JSON modification |
| Ungoogled Chromium | Chromium | Direct JSON modification |
| Firefox | Firefox | HTML export (manual import) |
| LibreWolf | Firefox | HTML export (manual import) |
| Waterfox | Firefox | HTML export (manual import) |
| Tor Browser | Firefox | HTML export (manual import) |
| Pale Moon | Firefox | HTML export (manual import) |
| Midori | HTML-only | HTML export (manual import) |
| Min | HTML-only | HTML export (manual import) |

### Backup Locations

Backups are automatically created before any modifications:

- **Chromium browsers**: `%USERPROFILE%\myTech.Today\Backups\<BrowserName>-<ProfileName>\Bookmarks_YYYYMMDD_HHMMSS.json`
- **Firefox browsers**: `%USERPROFILE%\myTech.Today\Backups\<BrowserName>\places_<ProfileName>_YYYYMMDD_HHMMSS.sqlite`

### Log Files

Detailed logs are written to:

- **Current log**: `%USERPROFILE%\myTech.Today\logs\bookmarks-manager.md`
- **Archived logs**: `%USERPROFILE%\myTech.Today\logs\bookmarks-manager.YYYY-MM.md` (monthly archives)

---

## File: `links-sample.psd1`

### Description

A PowerShell Data File containing curated, high-quality bookmarks organized into categories and subfolders. This file serves as the default source of bookmark data for `bookmarks.ps1`.

### Structure

The file uses a three-level hierarchy:

```powershell
@{
    'CategoryName' = @{
        'SubfolderName' = @(
            @{
                Title = 'Bookmark Title';
                URL   = 'https://example.com/';
                Icon  = 'https://example.com/favicon.ico';
            },
            # ... more bookmarks
        );
        # ... more subfolders
    };
    # ... more categories
}
```

### Hierarchy Levels

1. **Category** (top-level key): Corresponds to application categories (e.g., `Browsers`, `Development`, `Gaming`)
2. **Subfolder** (second-level key): Organizes bookmarks within a category (e.g., `News Updates`, `Aggregators`, `Resources`)
3. **Bookmark** (array element): Individual bookmark with `Title`, `URL`, and `Icon` properties

### Included Categories

The file contains **31 categories** with **168+ curated bookmarks**:

#### SoftwareTools Group
- **Browsers** (4 subfolders, 21 bookmarks)
- **Development** (9 subfolders, 36 bookmarks)
- **Productivity** (3 subfolders, 7 bookmarks)
- **Media** (3 subfolders, 5 bookmarks)
- **Utilities** (3 subfolders, 5 bookmarks)
- **Security** (3 subfolders, 4 bookmarks)
- **Communication** (3 subfolders, 6 bookmarks)
- **Remote Access** (1 subfolder, 3 bookmarks)
- **Maintenance** (1 subfolder, 2 bookmarks)
- **Shortcuts** (1 subfolder, 2 bookmarks)

#### WebServices Group
- **Cloud Storage** (2 subfolders, 2 bookmarks)
- **News** (1 subfolder, 2 bookmarks)
- **Social** (1 subfolder, 2 bookmarks)
- **Backup** (1 subfolder, 3 bookmarks)

#### Entertainment Group
- **Gaming** (2 subfolders, 4 bookmarks)
- **Education** (2 subfolders, 4 bookmarks)
- **Finance** (2 subfolders, 3 bookmarks)

#### AI Categories
- **Generative** (1 subfolder, 2 bookmarks)
- **Chatbots** (1 subfolder, 4 bookmarks)
- **ImageGen** (1 subfolder, 3 bookmarks)
- **CodeAssist** (1 subfolder, 3 bookmarks)
- **AI** (2 subfolders, 4 bookmarks)

#### Other Categories
- **Media Downloading** (4 subfolders, 13 bookmarks)
- **3D & CAD** (2 subfolders, 3 bookmarks)
- **Networking** (1 subfolder, 3 bookmarks)
- **Runtime** (1 subfolder, 3 bookmarks)
- **Writing** (2 subfolders, 3 bookmarks)
- **Video Editing** (1 subfolder, 3 bookmarks)
- **Audio Production** (1 subfolder, 3 bookmarks)
- **Screen Recording** (1 subfolder, 2 bookmarks)
- **Mockups & Wireframe** (1 subfolder, 3 bookmarks)

### Customization

To create your own curated bookmarks:

1. **Copy the sample file**:
   ```powershell
   Copy-Item .\bookmarks\links-sample.psd1 .\bookmarks\links.psd1
   ```

2. **Edit `links.psd1`** to add, remove, or modify bookmarks

3. **Run the script** (it will automatically use `links.psd1` instead of `links-sample.psd1`):
   ```powershell
   .\bookmarks\bookmarks.ps1 -Mode Add -Browser All
   ```

### Bookmark Properties

Each bookmark object supports the following properties:

| Property | Required | Description | Example |
|----------|----------|-------------|---------|
| `Title` | Yes | Display name of the bookmark | `'Steam - Digital Game Distribution'` |
| `URL` | Yes | Full URL of the bookmark | `'https://store.steampowered.com/'` |
| `Icon` | No* | URL to the favicon image | `'https://store.steampowered.com/favicon.ico'` |

*Note: While `Icon` is technically optional, it's included in all bookmarks in `links-sample.psd1` for better visual appearance in browsers.

### Favicon Best Practices

The file uses several strategies for reliable favicons:

1. **Direct favicon URLs**: `https://example.com/favicon.ico`
2. **Google's favicon service**: `https://www.google.com/s2/favicons?domain=example.com` (reliable fallback)
3. **Apple touch icons**: `https://example.com/apple-touch-icon.png` (higher resolution)
4. **Size parameter**: `https://www.google.com/s2/favicons?domain=example.com&sz=64` (for larger icons)

### Validation

To validate your curated links file:

```powershell
# Test if the file loads correctly
$data = Import-PowerShellDataFile -Path .\bookmarks\links-sample.psd1
Write-Host "Categories: $($data.Keys.Count)" -ForegroundColor Green

# Count total bookmarks
$totalBookmarks = 0
foreach ($category in $data.Keys) {
    foreach ($subfolder in $data[$category].Keys) {
        $totalBookmarks += $data[$category][$subfolder].Count
    }
}
Write-Host "Total bookmarks: $totalBookmarks" -ForegroundColor Cyan
```

---

## External Data Sources

The Bookmarks Manager supports loading additional bookmark data from external files. These are automatically merged into the main curated bookmarks when the script runs.

### File: `europe.ps1`

A PowerShell script file containing European regional news and information sources.

- **Format**: `.ps1` script that returns a hashtable
- **Regions**: 39 European countries and organizations (EU, NATO, ICC, B.I.S., individual countries)
- **Content**: News sites, government resources, regional information
- **Size**: ~39,000 lines

### File: `asia.psd1`

A PowerShell Data File containing Asian regional news and information sources.

- **Format**: `.psd1` data file
- **Countries**: 15 Asian countries (China, Japan, India, South Korea, Indonesia, etc.)
- **Content**: News sites, regional media, government resources
- **Size**: ~11,000 lines
- **Note**: Uses lowercase `'icon'` key (the script handles both `'Icon'` and `'icon'`)

### Adding Custom External Data Sources

To add your own external data source:

1. Create a `.ps1` or `.psd1` file with the same structure as `europe.ps1` or `asia.psd1`
2. Add the file name to the `$externalSources` array in `bookmarks.ps1` (in the `Load-ExternalDataSources` function)
3. The script will automatically load and merge the data

---

## Requirements

- **Operating System**: Windows 10 or later
- **PowerShell**: Version 5.1 or later (`#Requires -Version 5.1`)
- **Permissions**: File-system access to browser profile directories
- **Network**: Internet access for downloading the shared logging module (first run only)
- **Optional**: `app_installer\install.ps1` in the repository to supply additional application categories

---

## Local Resource Links

The `myTech.Today` bookmark subtree includes quick `file:///` links to local folders and files:

### Folders
- `%USERPROFILE%\myTech.Today\logs\` - Log files from all myTech.Today scripts
- `%USERPROFILE%\myTech.Today\reports\` - System reports and diagnostics
- `%USERPROFILE%\myTech.Today\config\` - Configuration files

### Log Files
- `AppInstaller.md` - Application installation logs
- `winget-update.md` - Windows Package Manager update logs
- `AppInstaller-GUI.md` - GUI installer logs
- `bookmarks-manager.md` - Bookmark manager logs

### System Reports
- Belarc Advisor HTML reports under `%ProgramFiles(x86)%\Belarc\BelarcAdvisor\System\tmp\`

---

## Safety and Best Practices

### Before Running the Script

1. **Close all target browsers** to avoid file locking issues
2. **Backup your browser profiles** (especially bookmark files) before the first run
3. **Test with `-WhatIf`** to preview changes without applying them:
   ```powershell
   .\bookmarks\bookmarks.ps1 -Mode Remove -Browser All -WhatIf
   ```

### When Using Restore Mode

- The target browser's bookmark file is **completely overwritten** with the backup
- Only use trusted backup files created by this script
- Keep the target browser closed during restoration
- Verify the backup file path and timestamp before proceeding

### Automatic Backups

The script automatically creates timestamped backups before making any changes:

- **Add mode**: Creates backup before adding myTech.Today folder
- **Remove mode**: Creates backup before removing myTech.Today folder
- **Restore mode**: Creates backup before overwriting with restored data

---

## Troubleshooting

### Bookmarks Not Appearing

1. **Close and reopen the browser** - Changes may not be visible until restart
2. **Check the log file** at `%USERPROFILE%\myTech.Today\logs\bookmarks-manager.md`
3. **Verify browser profile path** - The script auto-detects profiles, but custom locations may not be found
4. **For Firefox/HTML browsers**: Manually import the generated `myTech.Today-bookmarks.html` file

### Curated Links Not Loading

1. **Check file existence**: Ensure `links-sample.psd1` exists in the `bookmarks` folder
2. **Validate syntax**: Run `Import-PowerShellDataFile -Path .\bookmarks\links-sample.psd1` to check for errors
3. **Check category names**: Category names in `links-sample.psd1` must match exactly (case-sensitive)

### Permission Errors

1. **Run as Administrator** if accessing system-wide browser installations
2. **Check file permissions** on browser profile directories
3. **Disable antivirus temporarily** if it's blocking file modifications

---

## Related Scripts

This script is part of the wider **myTech.Today** PowerShell toolkit:

- **Application installation automation**: `app_installer\install.ps1` and `app_installer\install-gui.ps1`
- **Logging utilities**: `scripts\logging.ps1` (shared logging module)
- **Link validation**: `scripts\link-check.ps1` (validates URLs in curated links)
- **Test and analysis helpers**: Various scripts under `tools\`

---

## Version History

- **v1.4.0** (Current)
  - **Performance Optimizations**: Added parallel favicon fetching using PowerShell runspaces
  - **New Parameters**: `-SkipFavicons`, `-UseGoogleFavicons`, `-FaviconParallelism`
  - **Persistent Favicon Cache**: Favicons cached to disk at `%USERPROFILE%\myTech.Today\cache\favicon-cache.json`
  - **External Data Sources**: Added support for `europe.ps1` (39 regions) and `asia.psd1` (15 countries)
  - **Improved Data Loading**: Better handling of both `.ps1` and `.psd1` external data files
  - **Icon Key Compatibility**: Handles both `'Icon'` and `'icon'` property names in data files
  - **Massive Scale**: Now supports 85 categories, 3,257 subfolders, and 9,539+ bookmarks
  - **Speed**: With `-SkipFavicons`, processes all bookmarks in ~2 seconds

- **v1.3.1**
  - Added support for curated bookmarks via `links-sample.psd1`
  - Improved favicon handling with Google's favicon service fallback
  - Enhanced logging with detailed category processing information
  - Fixed JSON depth issue for deeply nested bookmark structures
  - Added automatic backup creation for all operation modes

---

## License

Part of the myTech.Today PowerShellScripts repository.

**Author**: Kyle Rode (myTech.Today)
**Repository**: https://github.com/mytech-today-now/PowerShellScripts

