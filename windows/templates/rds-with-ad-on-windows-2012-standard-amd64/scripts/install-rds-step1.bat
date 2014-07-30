:: Installing RDS Step 1
powershell.exe -File %~dp0install-rds-step1.ps1

:: Scheduling Install RDS Step 2
schtasks /create /tn "Install RDS Step 2" /tr %~dp0install-rds-step2.bat /sc onlogon
shutdown /r /t 5 /f /c "Install RDS Step 1 Finished"
