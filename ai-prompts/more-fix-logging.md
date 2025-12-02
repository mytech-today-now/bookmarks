# Enhance Scripts with Improved Event Viewer Logging

## Objective

Update the remaining myTech.Today PowerShell scripts to use the enhanced logging parameters (`-Solution`, `-Context`, `-Component`) added to `logging.ps1` v2.1.0. This will provide more descriptive Windows Event Log messages for troubleshooting.

## Background

The `Write-Log` function in `scripts/logging.ps1` now supports three optional parameters:
- `-Context` - What operation was being attempted when the issue occurred
- `-Solution` - Recommended action to resolve the issue
- `-Component` - Which component/module generated the message

These parameters create structured event messages in Windows Event Viewer with clear sections for problem description, context, and resolution steps.

## Scripts to Update

Prioritize WARNING and ERROR level log messages in these scripts:

### High Priority (User-facing scripts with complex operations)
1. `hosts/hosts.ps1` - DNS blocking/hosts file management
2. `BackupBrowser/BackupBrowser.ps1` - Browser backup operations
3. `mTTCleaner/mTTCleaner.ps1` - System cleanup operations

### Medium Priority (Installation and configuration scripts)
4. `app_installer/install.ps1` - CLI application installer
5. `app_installer/install-gui.ps1` - GUI application installer
6. `OO/Install-OOShutUp10.ps1` - O&O ShutUp10 installer
7. `RestorePoints/Manage-RestorePoints.ps1` - System restore management

### Lower Priority (Utility scripts)
8. `blog-processor/Process-BlogHTML.ps1` - Blog HTML processing
9. `scripts/link-check.ps1` - Link validation
10. `scripts/responsive.ps1` - Responsive design utilities

## Implementation Guidelines

### 1. Focus on WARNING and ERROR messages
Only enhance messages that indicate problems or potential issues. INFO and SUCCESS messages typically don't need the extra context.

### 2. Provide actionable solutions
The `-Solution` parameter should give users specific steps they can take:
```powershell
# Good
-Solution "Run the script as Administrator, or check that the hosts file is not read-only"

# Bad  
-Solution "An error occurred"
```

### 3. Include relevant context
The `-Context` parameter should explain what operation was being attempted:
```powershell
# Good
-Context "Downloading blocking rules from $script:HostsFileUrl"

# Bad
-Context "Downloading"
```

### 4. Use consistent component names
Component names should be descriptive and consistent within each script:
- `"DNS Configuration"`, `"Hosts File Backup"`, `"Custom Entry Extraction"`
- `"Browser Detection"`, `"Bookmark Export"`, `"Profile Scanning"`

### 5. Use backtick continuation for readability
```powershell
Write-Log "Failed to download blocking rules" -Level ERROR `
    -Context "Attempting to download hosts file from $url" `
    -Solution "Check your internet connection and verify the URL is accessible" `
    -Component "Hosts File Download"
```

## Example Transformations

### Before:
```powershell
Write-Log "Failed to download blocking rules: $_" -Level ERROR
```

### After:
```powershell
Write-Log "Failed to download blocking rules: $_" -Level ERROR `
    -Context "Downloading hosts blocking rules from $script:HostsFileUrl" `
    -Solution "Check internet connectivity. Verify firewall is not blocking the request. Try again later if the server is unavailable." `
    -Component "Hosts File Download"
```

## Verification

After updating each script:
1. Run the script and trigger a warning/error condition
2. Open Event Viewer → Applications and Services Logs → myTech.Today
3. Verify the enhanced message format appears with all sections

## Notes

- Scripts that define their own `Write-Log` function (like `install-gui.ps1` and `Manage-RestorePoints.ps1`) would need their local function updated to support the new parameters
- The new parameters are optional, so existing log calls continue to work
- Don't add the parameters to every log call - focus on messages that benefit from extra context

