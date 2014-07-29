# Ubuntu 14.04 AMD64 Server

## Create image

```bash
read -p 'Enter password: ' -s password
packer build -var 'user=ubuntu' -var "password=$password" ubuntu.json
```

## Software pre-installed

Look in ../scripts/ubuntu/packages.sh

* emacs24-nox
* vim-nox
* ...

