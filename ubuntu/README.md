# Ubuntu packer templates

## Create image

```bash
read -p 'Enter password: ' -s password
packer build -var 'user=ubuntu' -var "password=$password" ubuntu-14.04-server-amd64.json
```

## Software pre-installed

Look in scripts/packages.sh


