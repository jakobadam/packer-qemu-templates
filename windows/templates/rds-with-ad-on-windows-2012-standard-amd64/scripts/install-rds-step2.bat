:: Deleting old scheduled task
schtasks /delete /tn "Install RDS Step 2" -f

:: Schedule next step
schtasks /create /tn "Install RDS Step 3" /tr %~dp0install-rds-step3.bat /sc onlogon

:: Install RDS Step 2
powershell.exe -File %~dp0install-rds-step2.ps1

:: RDS Install is doing a restart

