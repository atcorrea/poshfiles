#install modules
#Install-Module -Name posh-git
#Install-Module -Name oh-my-posh
#Install-Module -Name posh-alias

#tools
#pip install thefuck

#git
#git config --global alias.ci 'commit'
#git config --global core.editor="C:\Users\andre.correa\AppData\Local\Programs\Microsoft VS Code\Code.exe" --wait
#git config --global core.longpaths=true
#git config --global user.name=Andre Torres Correa
#git config --global user.email=andre.correa@lambda3.com.br
#git config --global alias.st=status
#git config --global alias.co=checkout
#git config --global alias.cim=commit -m
#git config --global alias.ci=commit
#git config --global alias.aa=add .
#git config --global alias.pur=pull -r

Import-Module posh-git
Import-Module oh-my-posh
Import-Module posh-alias
Set-Prompt
Set-Theme Operator

$env:PYTHONIOENCODING="utf-8"
iex "$(thefuck --alias)"

#aliases
Add-Alias admin 'Start-Process wt  -Verb runAs' #windows terminal only