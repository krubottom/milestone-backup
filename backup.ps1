$DesktopPath = [Environment]::GetFolderPath("Desktop")
$date = Get-Date -Format MMddyyyy
$source = "C:\ProgramData\Milestone"
$destination = "$DesktopPath\Milestone.$date.zip"

# Add-Type -Path C:\Windows.old\WINDOWS\WinSxS\msil_system.io.compression.filesystem_b77a5c561934e089_4.0.14305.0_none_ac24209f3b58db7e\System.IO.Compression.FileSystem.dll
Add-Type -assembly "system.io.compression.filesystem"
[io.compresion.zipfile]::CreateFromDirectory($source, $destination)