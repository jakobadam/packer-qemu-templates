##Introduction

The packer-qemu-templates provides Packer templates for unattended building of
relevant virtual machine images in the qcow2 format for use with KVM.

In addition, all templates for use with Vagrant, through [vagrant-libvirt](https://github.com/pradels/vagrant-libvirt), are configured to let Packer create a Vagrant box through the libvirt post-processor. 

More info: http://blog.aarhusworks.com/unattended-installation-of-vm-images-with-packer/

##Status

Currently the project includes templates for Ubuntu, CentOS, Debian and Windows. In other words, the OSes of the VMs I and the other contributors use on a day-to-day basis.

Feel free to contribute more:-) 

##Usage

###Build qcow2 image
Go into the relevant template directory and run packer build on
the relevant json file.

```bash
$ cd windows
$ packer build windows-2012-R2-standard-vagrant.json
```

Templates names that ends with vagrant automatically creates a vagrant box.

Add the box to Vagrant

```bash
$ vagrant box add box/windows-2012-R2-standard.box --name windows-2012-R2-standard
```

Init vagrantfile
```
$ mkdir project && cd $_
$ vagrant init windows-2012-R2-standard
```

Start machine
```
$ vagrant up
```

Get IP of machine
```
$ vagrant ssh-config
```

##Acknowledgements

* [packer-images](https://github.com/opentable/packer-images.git)
* [packer-windows](https://github.com/joefitzgerald/packer-windows)
* [box-cutter](https://github.com/boxcutter/)

