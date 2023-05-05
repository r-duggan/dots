oh-my-posh init pwsh --config "~/.dots/.duggie.omp.json" | Invoke-Expression
Import-Module PowerColorLS
Import-Module Terminal-Icons

#Alias
Set-Alias -Name ls -Value PowerColorLS -Option AllScope
Set-Alias -Name vim -Value nvim -Option Allscope
