
Write-Host "Collecting Intune device logs..."
$logRoot = "$env:TEMP\IntuneLogs"
New-Item -ItemType Directory -Path $logRoot -Force | Out-Null
Get-ChildItem "$env:ProgramData\Microsoft\IntuneManagementExtension\Logs" -ErrorAction SilentlyContinue | Copy-Item -Destination $logRoot -Recurse -Force
Write-Host "Logs copied to $logRoot"
