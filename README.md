##Introduction

The packer-qemu-images is a project that provides easy building of
relevant images in the QEMU format.

##Usage

Go into the relevant template directory and run packer build on
the relevant json file.

```bash
$ cd windows
$ packer build windows-2012-R2-standard-amd64-vagrant.json
```

##Acknowledgements

[packer-images](https://github.com/opentable/packer-images.git)
[packer-windows](https://github.com/joefitzgerald/packer-windows)

