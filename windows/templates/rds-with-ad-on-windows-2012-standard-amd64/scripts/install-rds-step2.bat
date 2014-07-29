REM Delete old scheduled task, execute step2, and reboot
schtasks /delete /tn "RDS Install Step 2" -f

powershell.exe -File %~dp0rds-install-step2.ps1
cmd.exe /c %~dp0install-cygwin-sshd.bat
shutdown /r /t 10 /f /c "RDS Install Shutdown Step 2 Finished"