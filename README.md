##Introduction

The packer-qemu-images is a project that provides packer templates for slipstreamed building of
relevant images in the qcow2 format. 

The qcow2 images can be converted to vagrant boxes runnable by [vagrant-kvm](https://github.com/adrahon/vagrant-kvm).

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

###Build vagrant box for running with [vagrant-kvm](https://github.com/adrahon/vagrant-kvm)

After installing the OS in the image you can create a vagrant box

```bash
$ ~/vagrant-kvm/bin/package.sh windows-2012R2 packer-windows-2012R2-vagrant.qcow2
```

Add the box to vagrant
```bash
$ vagrant box add windows-2012R2.box --name windows-2012R2
```

##Acknowledgements

* [packer-images](https://github.com/opentable/packer-images.git)
* [packer-windows](https://github.com/joefitzgerald/packer-windows)
* [box-cutter](https://github.com/box-cutter/)

