:: Deleting old scheduled task
schtasks /delete /tn "Install RDS Step 3" -f

:: Installing Cygwin

cmd.exe /c %~dp0install-cygwin-sshd.bat

:: Schedule callback to admin server

cmd.exe /c %~dp0ip-task.bat