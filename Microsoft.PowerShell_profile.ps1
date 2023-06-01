oh-my-posh init pwsh --config "~/.dots/.duggie.omp.json" | Invoke-Expression
#Import-Module Terminal-Icons
#Import-Module PowerColorLS
#Import-Module PSReadLine

function upender { 
    Set-Location -Path "C:\Projects\J49049 (Nikola Hydrogen Tanks Upender)\Programs\Upender"
}

#Alias
Set-Alias -Name ls -Value PowerColorLS -Option AllScope
Set-Alias -Name vim -Value nvim -Option Allscope
Set-Alias -Name upender -Value upender -Option AllScope

# set environments
$Env:KOMOREBI_CONFIG_HOME = 'C:\Users\rduggan\.config\komorebi'
