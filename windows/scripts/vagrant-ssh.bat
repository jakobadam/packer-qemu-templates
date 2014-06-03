IF "%1%"=="win2003_64" (
  set USERDIR="C:\Documents and Settings"
) ELSE (
  set USERDIR="C:\Users"
)

if not exist %USERDIR%\vagrant\.ssh (
  mkdir %USERDIR%\vagrant\.ssh
)

if exist a:\vagrant.pub (
  copy a:\vagrant.pub %USERDIR%\vagrant\.ssh\authorized_keys
) else (
  if "%1%"=="win2003_64" (
    C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -Command "(New-Object System.Net.WebClient).DownloadFile('https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub', 'C:\Documents and Settings\vagrant\.ssh\authorized_keys')" <NUL
  ) else (
    C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -Command "(New-Object System.Net.WebClient).DownloadFile('https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub', 'C:\Users\vagrant\.ssh\authorized_keys')" <NUL
  )
)

cd %USERDIR%\vagrant
cmd /c %SystemDrive%\cygwin\bin\bash -c 'PATH=/usr/local/bin:/usr/bin:/bin:/usr/X11R6/bin chown -R vagrant .ssh'