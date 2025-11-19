# myTech.Today Bookmarks Manager

`bookmarks.ps1` builds and maintains a consistent **myTech.Today** bookmarks folder across multiple browsers on Windows. It is designed to complement the myTech.Today app installer profiles and logging conventions.

## Features

- Add or remove a structured `myTech.Today` bookmarks folder for multiple browsers in one run:
  - Chromium-based browsers (Chrome, Edge, Brave, Vivaldi, etc.) are updated in-place via their bookmark JSON files.
  - Firefox-family and HTML-only browsers get an importable `myTech.Today-bookmarks.html` file that you can load via the browser's library/import UI.
- Automatically derive application categories from `app_installer\install.ps1` (when present)
- Create groups of links per category:
  - Popularity / overview links
  - Technical resources
  - Community resources
  - Off-brand / alternative search engines
  - Topic-specific search engines
  - Topical resource searches (tutorials, best practices, etc.)
- Add a dedicated `myTech.Today` bookmark subtree that points to:
  - `%USERPROFILE%\myTech.Today\logs\`
  - `%USERPROFILE%\myTech.Today\reports\`
  - `%USERPROFILE%\myTech.Today\config\`
  - Belarc Advisor HTML reports and local myTech.Today log files
- Restore a Chromium-based browser's bookmark file from a JSON backup created earlier

## Supported browsers

The script can work with the following browsers (depending on what is installed on the system):

- Chrome, Edge, Brave, Vivaldi
- Firefox, LibreWolf, Waterfox, Tor Browser
- Chromium, Ungoogled Chromium
- Opera, Opera GX
- Pale Moon, Midori, Min
- Or `All` to target every supported browser that is detected

## Requirements

- Windows with PowerShell 5.1 or later (`#Requires -Version 5.1`)
- File-system access to the browser profile directories
- (Optional) `app_installer\install.ps1` in the repository to supply application categories
- Network access the first time the shared logging module is downloaded from GitHub, or a local copy of `scripts\logging.ps1`

## Usage

From the repository root or the `bookmarks` folder:

```powershell
# Add myTech.Today bookmarks for all supported browsers
.\bookmarks\bookmarks.ps1 -Mode Add -Browser All

# Add bookmarks only for Chrome and Edge
.\bookmarks\bookmarks.ps1 -Mode Add -Browser Chrome,Edge

# Remove the myTech.Today bookmark structure (dry run)
.\bookmarks\bookmarks.ps1 -Mode Remove -Browser All -WhatIf

# Restore Chrome bookmarks from a JSON backup file (full file overwrite for default profile)
.\bookmarks\bookmarks.ps1 -Mode Restore -Browser Chrome -BackupPath "C:\Users\YourUserName\myTech.Today\Backups\Bookmarks\Chrome\Bookmarks_20250101_120000.json"
```

The script writes detailed log output using the shared `logging.ps1` module. By convention, logs are stored under:

- `%USERPROFILE%\myTech.Today\logs\`

## Logging and local resources

The `myTech.Today` bookmark subtree includes quick links to:

- `%USERPROFILE%\myTech.Today\logs\`
- `%USERPROFILE%\myTech.Today\reports\`
- `%USERPROFILE%\myTech.Today\config\`
- Belarc Advisor reports under `%ProgramFiles(x86)%\Belarc\BelarcAdvisor\System\tmp\`
- Local log files such as:
  - `AppInstaller.md`
  - `winget-update.md`
  - `AppInstaller-GUI.md`

These links are surfaced as `file:///` URLs to make it easy to jump from the browser to local diagnostics.

## Safety and recommendations

- Close all target browsers before running the script so that bookmark files are not locked.
- Consider backing up your browser profiles (especially the bookmark files) before the first run.
- Use `-WhatIf` with `-Mode Remove` to see what would be changed without applying it.
- When using `-Mode Restore`, the target browser's bookmark file is overwritten with the contents of the backup JSON; use only with trusted backups and keep the browser closed.


## Related scripts

This script is part of the wider **myTech.Today** PowerShell toolkit, which includes:

- Application installation automation (`app_installer\install.ps1`)
- Logging utilities (`scripts\logging.ps1`)
- Test and analysis helpers under `tools\`

