
# Requires: Run in elevated PowerShell
Write-Host "Collecting Autopilot diagnostics..."
$paths = @(
  "$env:ProgramData\Microsoft\IntuneManagementExtension\Logs",
  "$env:windir\Panther",
  "$env:windir\ServiceProfiles\LocalService\AppData\Local\MDM"
)
foreach($p in $paths){ if(Test-Path $p){ Write-Host "Found: $p" } }
