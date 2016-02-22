:: %~dp0 gives the dirname of the script
cmd /c %~dp0install-winrm.cmd

:: start winrm
cmd /c %~dp0zz-start-sshd.cmd
