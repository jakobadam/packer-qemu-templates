#!/usr/bin/env bash
HERE=$(dirname $(readlink -f $0))

# symlink current Windows user dir into /home
ln -s "$(dirname $(cygpath -D))" /home/${USERNAME}

mkgroup -l > /etc/group
mkpasswd -l -p "$(cygpath -H)" > /etc/passwd

# Create random password for cyg_server user
# This might *not* fullfill the password requirements
# in which case the user is prompted
SSH_SERVICE_USER_PASSWORD=$(makepasswd --minchars=20 --maxchars=30)
ssh-host-config -y --cygwin "ntsecbinmode mintty nodosfilewarning" --pwd "${SSH_SERVICE_USER_PASSWORD}"

# Disable user / group permission checking
sed -i 's/.*StrictModes.*/StrictModes no/' /etc/sshd_config

# Disable reverse DNS lookups
sed -i 's/.*UseDNS.*/UseDNS no/' /etc/sshd_config
