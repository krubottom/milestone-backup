$source = "C:\ProgramData\Milestone"
$destination = "C:\milestone.zip"
Add-Type -assembly "system.io.compression.filesystem"
[io.compresion.zipfile]::CreateFromDirectory($source, $destination)