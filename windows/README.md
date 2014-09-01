## Windows Packer Templates

* Virtio drivers are loaded on startup
* Configured as 2 CPU and 4 GB memory by default
* No updates or services packs applied 
* Firewall is disabled
* RDP enabled
* Powershell is installed with Remote Execution policy is set to unrestricted

The OS can be evaluated for 180-days. http://technet.microsoft.com/en-US/evalcenter/dn205286.aspx 

### Quick Start

```bash
packer build -var windows-2012-R2-standard-amd64.json
```

### Windows 2012 R2 Standard 

* User Administrator
* Default password Administr@tor

Alter the admin password and the disk size:

```
read -p 'Enter password: ' -s password
packer build -var "disk_size=61440" -var "password=$password" windows-2012-R2-standard-amd64.json
```

*NOTE*: Password strength requirements are pretty harsh
http://technet.microsoft.com/en-us/library/cc786468%28v=ws.10%29.aspx

### Windows 2012 R2 Standard Vagrant

* User vagrant
* Default password vagrant
* Vagrant *insecure* public key is deployed for SSH access.


