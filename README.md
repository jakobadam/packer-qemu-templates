##Introduction

The packer-qemu-templates provides Packer templates for unattended building of
relevant virtual machine images in the qcow2 format for use with KVM.

In addition, all templates for use with Vagrant, through [vagrant-libvirt](https://github.com/pradels/vagrant-libvirt), are configured to let Packer create a Vagrant box through the libvirt post-processor. 

More info: http://blog.aarhusworks.com/slipstreaming-vm-imags-with-packer/

##Status

Currently the project includes templates for Ubuntu, CentOS, Debian and Windows. In other words, the OSes of the VMs I and the other contributors use on a day-to-day basis.

Feel free to contribute more:-) 

##Usage

###Build qcow2 image
Go into the relevant template directory and run packer build on
the relevant json file.

```bash
$ cd windows
$ packer build windows-2012-R2-standard-amd64.json
```

There is also a version with Vagrant SSH keys included:

```bash
$ cd windows
$ packer build windows-2012-R2-standard-amd64-vagrant.json
```

Add the box to Vagrant
```bash
$ vagrant box add windows-2012R2.box --name windows-2012R2
```

##Acknowledgements

* [packer-images](https://github.com/opentable/packer-images.git)
* [packer-windows](https://github.com/joefitzgerald/packer-windows)
* [box-cutter](https://github.com/boxcutter/)

