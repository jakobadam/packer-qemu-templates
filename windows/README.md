## Windows Packer Templates

* Virtio drivers are loaded on startup
* Configured as 2 CPU and 4 GB memory by default
* No updates or services packs applied 
* Firewall is disabled
* RDP enabled
* Powershell is installed with Remote Execution policy is set to unrestricted

### Authentication

Vagrant machines:
User: vagrant
Password: vagrant

The vagrant insecure public key is deployed for SSH access.

Non-Vagrant machines:
User: Administrator
Password: Administrator

### Windows 2012 R2 Standard 

In order to obtain your own windows iso you can register and download
the Windows install iso from:
http://technet.microsoft.com/en-US/evalcenter/dn205286.aspx The OS can
be evaluated for 180-days.
