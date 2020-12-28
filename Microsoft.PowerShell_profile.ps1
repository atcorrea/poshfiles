$root = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent

#. "$root/import-modules.ps1"
#. "$root/install-tools.ps1"
#. "$root/add-git-aliases.ps1"

Set-Prompt
Set-Theme Operator

$env:PYTHONIOENCODING="utf-8"
iex "$(thefuck --alias)"

#aliases
Add-Alias admin 'Start-Process wt  -Verb runAs' #windows terminal only