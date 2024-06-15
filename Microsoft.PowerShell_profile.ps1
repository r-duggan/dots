oh-my-posh init pwsh --config "~/.dots/.duggie.omp.json" | Invoke-Expression
Import-Module Terminal-Icons
Import-Module PowerColorLS
Import-Module PSReadLine

function Add-Folders {
    $currentDir = Get-Location

    if (Test-Path -Path '.\Comm') {
    } else {
        New-Item -Path '.\Comm' -Type Directory
    }

    if (Test-Path -Path '.\Docu') {
    } else {
        New-Item -Path '.\Docu' -Type Directory
    }

    if (Test-Path -Path '.\Dwgs') {
    } else {
        New-Item -Path '.\Dwgs' -Type Directory
    }

    if (Test-Path -Path '.\Expired'){
    } else {
        New-Item -Path '.\Expired' -Type Directory
    }

    if (Test-Path -Path '.\Pics'){
    } else {
        New-Item -Path '.\Pics' -Type Directory
    }

    if (Test-Path -Path '.\Programs'){
    } else {
        New-Item -Path '.\Programs' -Type Directory
    }

    $childDir = Split-Path -Path $currentDir -Leaf

    New-Item ".\$($childDir).txt" -Type File
}

#Alias
Set-Alias -Name ls -Value PowerColorLS -Option AllScope
Set-Alias -Name createBase -Value Add-Folders -Option AllScope

# set environments
$Env:KOMOREBI_CONFIG_HOME = 'C:\Users\rduggan\.config\komorebi'
