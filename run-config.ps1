Write-Output "Installing modules"
Install-Module posh-git -Scope CurrentUser -PassThru -RequiredVersion 0.7.3
Install-Module oh-my-posh -Scope CurrentUser -PassThru -RequiredVersion 2.0.468
Install-Module PSReadLine -Scope CurrentUser -PassThru -RequiredVersion 2.0.0
Write-Output "Installing done"

Write-Output "Installing Cascadia Code"
.\Helpers\Add-Font.ps1 -path .\Assets\CascadiaCodePL.ttf
Write-Output "Done installing Cascadia Code"

#This will copy the profile to the PowerShell version that is exercuting this script. This can be either Windows PowerShell or PowerShell Core
Write-Output "Copying PS Core profile"
Copy-Item -Path .\assets\Microsoft.PowerShell_profile.ps1 -Destination $PROFILE -PassThru
Write-Output "Done copying PS Core profile"

Write-Output "Copying files"
Copy-Item -Path .\settings.json -Destination $env:LocalAppData\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState -PassThru
Copy-Item -Path .\assets\backgrounds -Destination $env:LocalAppData\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\backgrounds -Recurse -PassThru -Force
Write-Output "Done copying files"