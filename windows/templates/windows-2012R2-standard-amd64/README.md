Windows 2012 R2 Standard Edition x64 (with no configuration management tools)

Machine Specific
----------------

* Virtio drivers are loaded on startup
* Box size around 4 GB
* Configured as 2 CPU and 4 GB memory by default
* No updates or services packs applied 
* Firewall is disabled
* RDP enabled
* Local Administrator account enabled
* Powershell is installed with Remote Execution policy is set to unrestricted

Register and download the Windows install iso from:
http://technet.microsoft.com/en-US/evalcenter/dn205286.aspx The OS can be
evaluated for 180-days.

Authentication
--------------
User: vagrant
Password: vagrant

The vagrant insecure public key is deployed for SSH access.

Software Pre-installed
----------------------
The following software is installed and pre-configured:

* Openssh (via Cygwin)
* Git (via Cygwin)
* Curl and Wget (via Cygwin)


