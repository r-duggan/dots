#create a dots directory
if (Test-Path $HOME\.dots) {
    Write-Host "Directory Exists"
}
else {
    mkdir $HOME\.dots
}

#create a file to source the .vimrc
if (Test-Path $HOME\.vimrc) {
    Write-Host ".vimrc exists"
}
else {
    New-Item -ItemType file $env:USERPROFILE\.vimrc
    Add-Content $env:USERPROFILE\.vimrc 'source ~/.dots/.vimrc'
}

#clone dot files
git clone https://github.com/r-duggan/dots $HOME\.dots

#get PowerColorLS and Dependancy
Install-Module -Name Terminal-Icons -Repository PSGallery
Import-Module -Name Terminal-Icons
Install-Module -Name PowerColorLS -Repository PSGallery
Import-Module PowerColorLS

#get oh-my-posh
Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://ohmyposh.dev/install.ps1'))

#symlink Powershell profile
$sourcePath = "$HOME\.dots\Microsoft.PowerShell_profile.ps1"
$targetPath = "$HOME\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1"
New-Item -ItemType SymbolicLink -Path $targetPath -Target $sourcePath

