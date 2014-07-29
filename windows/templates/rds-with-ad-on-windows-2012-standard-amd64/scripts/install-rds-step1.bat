REM Execute step1, schedule step2 and reboot

powershell.exe -File %~dp0rds-install-step1.ps1
schtasks /create /tn "RDS Install Step 2" /tr %~dp0rds-install-step2.bat /sc onlogon
shutdown /r /t 5 /f /c "RDS Install Shutdown Step 1 Finished"

