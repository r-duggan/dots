#create a file to source the .vimrc
if (Test-Path $HOME\.vimrc) {
    Write-Host ".vimrc exists`n"
}
else {
    Write-Host "creating .vimrc and sourcing ~/.dots/.vimrc`n"
    New-Item -ItemType file $env:USERPROFILE\.vimrc
    Add-Content $env:USERPROFILE\.vimrc 'source ~/.dots/.vimrc'
}

#install vim-plug
if (Test-Path $HOME/vimfiles/autoload/plug.vim){
    Write-Host "VimPlug already installed`n"
}
else {
    Write-Host "downloading VimPlug`n"
    iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
        ni $HOME/vimfiles/autoload/plug.vim -Force
}

#get PowerColorLS and Dependancy
if (Get-Module -ListAvailable -Name Terminal-Icons) {
    Write-Host "Terminal-Icons already installed`n"
}
else {
    Write-Host "`nInstalling Terminal-icons`n"
    Install-Module -Name Terminal-Icons -Repository PSGallery -Scope CurrentUser
    Write-Host "Importing Terminal-icons`n"
    Import-Module -Name Terminal-Icons
}
if (Get-Module -ListAvailable -Name PowerColorLS) {
    Write-Host "PowerColorLS already installed`n"
}
else {
    Write-Host "Installing PowerColorLS`n"
    Install-Module -Name PowerColorLS -Repository PSGallery -Scope CurrentUser
    Write-Host "Importing PowerColorLS`n"
    Import-Module PowerColorLS
}

#get oh-my-posh
if (Test-Path $HOME\AppData\Local\Programs\oh-my-posh\) {
    Write-Host "oh-my-posh already installed`n"
}
else {
    Write-Host "Downloading and installing oh-my-posh`n"
    Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://ohmyposh.dev/install.ps1'))
}

#symlink Powershell profile
if (Test-Path $HOME\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1) {
    Write-Host "Symlink already created`n"
}
else {
    $sourcePath = "$HOME\.dots\Microsoft.PowerShell_profile.ps1"
    $targetPath = "$HOME\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1"
    Write-Host "Symlinking $sourcePath to $targetPath'n"
    New-Item -ItemType SymbolicLink -Path $targetPath -Target $sourcePath
}
