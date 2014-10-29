##Introduction

The packer-qemu-images is a project that provides easy building of
relevant images in the QEMU format.

More info: http://blog.aarhusworks.com/slipstreaming-vm-imags-with-packer/

##Status

Currently the project includes templates for Ubuntu, Debian and Windows. In other words, the OSes of the VMs I use on a day-to-day basis.

Feel free to contribute more:-)

##Usage

Go into the relevant template directory and run packer build on
the relevant json file.

```bash
$ cd windows
$ packer build windows-2012-R2-standard-amd64.json
```

There is also version with vagrant SSH keys included:

```bash
$ cd windows
$ packer build windows-2012-R2-standard-amd64-vagrant.json
```

##Acknowledgements

[packer-images](https://github.com/opentable/packer-images.git)
[packer-windows](https://github.com/joefitzgerald/packer-windows)
[box-cutter](https://github.com/box-cutter/)

