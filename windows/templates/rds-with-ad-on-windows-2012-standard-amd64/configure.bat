:: %~dp0 gives the dirname of the script
:: we use this so it's easy to test the script from both
:: packer and samba etc.

cmd.exe /c %~dp0disable-hibernate.bat
cmd.exe /c %~dp0enable-rdp.bat
cmd.exe /c %~dp0execution-policy-unrestricted.bat
cmd.exe /c %~dp0firewall-disable.bat

:: Install Remote Desktop Services
:: Restarts the machine several times
cmd.exe /c %~dp0install-rds.bat

:: NOTE: Cygwin is installed via scheduled task setup by install-rds
:: This is done as the final step since packer shuts down the machine
:: when ssh is ready
