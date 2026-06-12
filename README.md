# Bookmarks Manager

**Deploy 9,500+ curated bookmarks across 15 browsers with one command.**

Part of the [myTech.Today](https://mytech.today) PowerShell toolkit.

## Features

- **15 Browsers** — Chrome, Edge, Firefox, Brave, Vivaldi, Opera, LibreWolf, and more
- **9,500+ Bookmarks** — 85 categories including 39 European regions and 15 Asian countries
- **Three Modes** — Add, Remove, or Restore bookmark structures
- **JSON Templates** — Visual tree-organizer editor + JSON import/export
- **Auto-Generated Fallback** — Search-based bookmarks for categories without curated data
- **Parallel Favicons** — Fast fetching with persistent cache; or skip entirely (~2 seconds)
- **Automatic Backups** — Timestamped backups before every change

## Quick Start

```powershell
Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy Unrestricted
.\bookmarks.ps1 -Mode Add -Browser All
```

## Usage

```powershell
.\bookmarks.ps1 -Mode Add -Browser All                          # All browsers
.\bookmarks.ps1 -Mode Add -Browser Chrome,Edge                  # Specific browsers
.\bookmarks.ps1 -Mode Add -Browser All -SkipFavicons            # Fast mode (~2s)
.\bookmarks.ps1 -Mode Add -Browser All -Template ".\my.json"    # Custom JSON template
.\bookmarks.ps1 -GenerateTemplate                               # Export JSON and exit
.\bookmarks.ps1 -Mode Remove -Browser All -WhatIf               # Preview removal
.\bookmarks.ps1 -Mode Restore -Browser Chrome -BackupPath "..."  # Restore from backup
```

## Parameters

| Parameter | Type | Description |
|-----------|------|-------------|
| `-Mode` | String | `Add`, `Remove`, or `Restore` (default: `Add`) |
| `-Browser` | String[] | Target browsers or `All` (default: `All`) |
| `-Template` | String | JSON template path (local, UNC, or URL) |
| `-GenerateTemplate` | Switch | Export `bookmarks.json` from curated data and exit |
| `-SkipFavicons` | Switch | Skip favicon fetching for maximum speed |
| `-UseGoogleFavicons` | Switch | Use Google's favicon service only |
| `-BackupPath` | String | Backup file for Restore mode |
| `-WhatIf` | Switch | Preview without changes |

## Data Sources

| File | Content |
|------|---------|
| `links-sample.psd1` | 31 categories, 168+ curated bookmarks |
| `europe.ps1` | 39 European regions with news sources |
| `asia.psd1` | 15 Asian countries with news sources |

Customize by copying `links-sample.psd1` → `links.psd1` and editing.

## Tree Organizer

Open `bookmarks/tree-organizer/index.html` for a drag-and-drop visual bookmark editor with JSON import/export.

## Requirements

- Windows 10+, PowerShell 5.1+

## Logs & Backups

| Item | Path |
|------|------|
| Logs | `%USERPROFILE%\myTech.Today\logs\bookmarks-manager.md` |
| Chromium Backups | `%USERPROFILE%\myTech.Today\Backups\<Browser>\` |
| Firefox Backups | `%USERPROFILE%\myTech.Today\Backups\<Browser>\` |

---

### About myTech.Today

**Safe. Secure. Support. Solutions.** — Midwest IT services including Managed IT, Cyber Security, Cloud Solutions, AI & Automation, and PowerShell tooling.

📧 [sales@mytech.today](mailto:sales@mytech.today) · 🌐 [mytech.today](https://mytech.today) · 💻 [@mytech-today-now](https://github.com/mytech-today-now)

© 2025 myTech.Today. All rights reserved.

