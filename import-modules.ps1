$root = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent
$modulesDirectory = Join-Path $root Modules

Import-Module "$modulesDirectory/posh-git/src/posh-git.psd1"
#Import-Module "$modulesDirectory/oh-my-posh/oh-my-posh.psm1"
Import-Module "$modulesDirectory/posh-alias/Posh-Alias.psd1"
Import-Module "$modulesDirectory/terminal-icons/build.ps1"
Import-Module PSReadLine