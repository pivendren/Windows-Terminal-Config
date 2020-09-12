Write-Output "Installing modules"
Install-Module posh-git -Scope CurrentUser
Install-Module oh-my-posh -Scope CurrentUser
Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck
Write-Output "Installing done"

#This will copy the profile to the PowerShell version that is exercuting this script. This can be either Windows PowerShell or PowerShell Core
Write-Output "Copying PS Core profile"
Copy-Item -Path .\Microsoft.PowerShell_profile.ps1 -Destination $PROFILE -PassThru
Write-Output "Done copying PS Core profile"

Write-Output "Copying files"
Copy-Item -Path .\settings.json -Destination $env:LocalAppData\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState -PassThru
Copy-Item -Path .\backgrounds -Destination $env:LocalAppData\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\backgrounds -Recurse -PassThru
Write-Output "Done copying files"