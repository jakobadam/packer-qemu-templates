## Windows Packer Templates

* Virtio drivers are loaded on startup
* Configured as 2 CPU and 2 GB memory by default
* Ping enabled
* RDP enabled
* Vagrant user with password vagrant

### Quick Start

```bash
$ packer build windows-2012-R2-standard.json
```

### Windows 2012 R2 Standard

Alter the admin password and the disk size:

```
$ read -p 'Enter password: ' -s password
$ packer build -var "disk_size=61440" -var "password=$password" windows-2012-R2-standard-amd64.json
```

*NOTE*: Password strength requirements are pretty harsh
http://technet.microsoft.com/en-us/library/cc786468%28v=ws.10%29.aspx
