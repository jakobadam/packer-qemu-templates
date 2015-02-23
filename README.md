##Introduction

The packer-qemu-templates is a project that provides packer templates for unattended building of
relevant images in the qcow2 format. 

In addition, all templates for use with Vagrant, through [vagrant-libvirt](https://github.com/pradels/vagrant-libvirt), automatically creates a Vagrant box through the packer libvirt post-processor. 

More info: http://blog.aarhusworks.com/slipstreaming-vm-imags-with-packer/

##Status

Currently the project includes templates for Ubuntu, Debian and Windows. In other words, the OSes of the VMs I use on a day-to-day basis.

Feel free to contribute more:-)

##Usage

###Build qcow2 image
Go into the relevant template directory and run packer build on
the relevant json file.

```bash
$ cd windows
$ packer build windows-2012-R2-standard-amd64.json
```

There is also a version with vagrant SSH keys included:

```bash
$ cd windows
$ packer build windows-2012-R2-standard-amd64-vagrant.json
```

Add the box to vagrant
```bash
$ vagrant box add windows-2012R2.box --name windows-2012R2
```

##Acknowledgements

* [packer-images](https://github.com/opentable/packer-images.git)
* [packer-windows](https://github.com/joefitzgerald/packer-windows)
* [box-cutter](https://github.com/box-cutter/)

