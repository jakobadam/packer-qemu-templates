Install-WindowsFeature -Name Remote-Desktop-Services
Install-WindowsFeature -Name RDS-Gateway
Install-WindowsFeature -Name RDS-Licensing
Install-WindowsFeature -Name RDS-RD-Server
Install-WindowsFeature -Name RDS-Web-Access
Install-WindowsFeature -Name RDS-Connection-Broker
Install-WindowsFeature -Name RSAT-RDS-Tools
Install-WindowsFeature -Name AD-Domain-Services

Rename-Computer -NewName "rds"
net user administrator "V@grant" /passwordreq:yes

# Restart and execute step2
# $dirname = Split-Path $script:MyInvocation.MyCommand.Path -parent
# $step2_path = "$dirname\rds-install-step2.ps1"

# $trigger = New-JobTrigger -AtLogOn
# Register-ScheduledJob -Name "RDS Install Step 2" -Trigger $trigger -FilePath $step2_path 
# Restart-Computer 


