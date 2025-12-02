# Better Event Viewer Logging

refactor 'Q:\_kyle\temp_documents\GitHub\PowerShellScripts\bookmarks\bookmarks.ps1' and 'Q:\_kyle\temp_documents\GitHub\PowerShellScripts\scripts\logging.ps1' with the idea in pursuit of making the Windows Event Log event message more descriptive.  Currently, when a Warning occurs in 'Q:\_kyle\temp_documents\GitHub\PowerShellScripts\bookmarks\bookmarks.ps1', this is the text of the event, in Widnows Event Viewer:""

The description for Event ID 2000 from source Bookmarks-Manager cannot be found. Either the component that raises this event is not installed on your local computer or the installation is corrupted. You can install or repair the component on the local computer.

If the event originated on another computer, the display information had to be saved with the event.

The following information was included with the event: 

Script: Bookmarks-Manager
Version: 1.2.0
Computer: MYTECHTODAY-LAP
User: kyle
Timestamp: 2025-11-30 15:05:38
Level: [WARN]

Message:
No Chromium profiles with bookmarks found

Log File: C:\Users\kyle\myTech.Today\logs\bookmarks-manager.md

The message resource is present but the message was not found in the message table
""

The description for Event ID 2000 from source Bookmarks-Manager should be provided.  the component that raises this event should be installed on the computer, at least to the point of being able to determine the reason why the info,Warning or Error occured.
The Event Viewer Message for this event should be much more descriptive towards solving the problem or understanding the error.

When 'Q:\_kyle\temp_documents\GitHub\PowerShellScripts\scripts\logging.ps1' is refactored, it should remain backwards compatible with the following scripts which should not change:
'Q:\_kyle\temp_documents\GitHub\PowerShellScripts\app_installer\install-gui.ps1',
'Q:\_kyle\temp_documents\GitHub\PowerShellScripts\app_installer\install.ps1',
'Q:\_kyle\temp_documents\GitHub\PowerShellScripts\BackupBrowser\BackupBrowser.ps1',
'Q:\_kyle\temp_documents\GitHub\PowerShellScripts\blog-processor\Process-BlogHTML.ps1',
'Q:\_kyle\temp_documents\GitHub\PowerShellScripts\hosts\hosts.ps1',
'Q:\_kyle\temp_documents\GitHub\PowerShellScripts\mTTCleaner\mTTCleaner.ps1',
'Q:\_kyle\temp_documents\GitHub\PowerShellScripts\OO\Install-OOShutUp10.ps1',
'Q:\_kyle\temp_documents\GitHub\PowerShellScripts\RestorePoints\Manage-RestorePoints.ps1',
'Q:\_kyle\temp_documents\GitHub\PowerShellScripts\scripts\link-check.ps1', and 
'Q:\_kyle\temp_documents\GitHub\PowerShellScripts\scripts\responsive.ps1'

'Q:\_kyle\temp_documents\GitHub\PowerShellScripts\scripts\logging.ps1' should better handle the Windows Event Viewer messages by making them more descriptive.

If each of these need to change, in order for this new event viewer clarity to occur, then try to make it occur in the most expeditious manner possible:
'Q:\_kyle\temp_documents\GitHub\PowerShellScripts\app_installer\install-gui.ps1',
'Q:\_kyle\temp_documents\GitHub\PowerShellScripts\app_installer\install.ps1',
'Q:\_kyle\temp_documents\GitHub\PowerShellScripts\BackupBrowser\BackupBrowser.ps1',
'Q:\_kyle\temp_documents\GitHub\PowerShellScripts\blog-processor\Process-BlogHTML.ps1',
'Q:\_kyle\temp_documents\GitHub\PowerShellScripts\hosts\hosts.ps1',
'Q:\_kyle\temp_documents\GitHub\PowerShellScripts\mTTCleaner\mTTCleaner.ps1',
'Q:\_kyle\temp_documents\GitHub\PowerShellScripts\OO\Install-OOShutUp10.ps1',
'Q:\_kyle\temp_documents\GitHub\PowerShellScripts\RestorePoints\Manage-RestorePoints.ps1',
'Q:\_kyle\temp_documents\GitHub\PowerShellScripts\scripts\link-check.ps1', and 
'Q:\_kyle\temp_documents\GitHub\PowerShellScripts\scripts\responsive.ps1'