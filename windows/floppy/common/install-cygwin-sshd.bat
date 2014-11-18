:: create the cygwin directory
mkdir %SystemDrive%\cygwin

:: Fetch cygwin
set URL=http://cygwin.com/setup-x86_64.exe
bitsadmin /transfer CygwinSetupExe /download /priority normal %URL% %SystemDrive%\cygwin\cygwin-setup-x86_64.exe

:: goto a temp directory and install
cd /D %SystemDrive%\windows\temp

:: packages -- comma separated
set PACKAGES=cygrunsrv,openssh,rsync

%SystemDrive%\cygwin\cygwin-setup-x86_64.exe -a x86_64 -q -R %SystemDrive%\cygwin -P %PACKAGES% -s http://cygwin.mirrors.pair.com

:: Firewall Rules
netsh advfirewall firewall add rule name="sshd" dir=in action=allow program="%SystemDrive%\cygwin\usr\sbin\sshd.exe" enable=yes
netsh advfirewall firewall add rule name="ssh" dir=in action=allow protocol=TCP localport=22

:: Stop the service
%SystemDrive%\cygwin\bin\bash -l -c 'cygrunsrv -E sshd'

:: Configure ssh
%SystemDrive%\cygwin\bin\bash -l -c '/bin/ssh-host-config -y --cygwin "ntsecbinmode mintty" --pwd "acb&&123!!"'

:: /bin/ash is the right shell for this command
:: Is this needed?
:: %SystemDrive%\cygwin\bin\ash -l -c /bin/rebaseall

:: Rebuild group and passwd
%SystemDrive%\cygwin\bin\bash -l -c 'mkgroup -l'>%SystemDrive%\cygwin\etc\group
%SystemDrive%\cygwin\bin\bash -l -c 'mkpasswd -l'>%SystemDrive%\cygwin\etc\passwd

%SystemDrive%\cygwin\bin\bash -l -c 'ln -s "$(dirname $(cygpath -D))" /home/$USERNAME'

:: Put local users home directories in the Windows Profiles directory
%SystemDrive%\cygwin\bin\bash -l -c 'mkpasswd -l -p "$(cygpath -H)"'>%SystemDrive%\cygwin\etc\passwd

:: Start at last -- server is powered off by packer when ssh is avail. 
net start sshd