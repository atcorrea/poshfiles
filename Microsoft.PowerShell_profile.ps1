$root = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent

#. "$root/install-tools.ps1"
#. "$root/add-git-aliases.ps1"
. "$root/import-modules.ps1"

# ========= oh-my-posh
#Set-Prompt
#Set-Theme Operator

# ======== thefuck
$env:PYTHONIOENCODING="utf-8"
iex "$(thefuck --alias)"

# ===== starship
Invoke-Expression (&starship init powershell)

# ===== PSREADLINE
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows

# ========= aliases
Add-Alias admin 'Start-Process wt  -Verb runAs'
Add-Alias hosts 'Start-Process notepad C:\Windows\System32\drivers\etc\hosts -Verb RunAs'
Add-Alias sln 'Start-Process "./*.sln"'