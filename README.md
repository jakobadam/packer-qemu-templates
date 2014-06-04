##Introduction

The packer-qemu-images is a project that provides easy building of
relevant images in the qemu format.

##Usage

Go into the relevant template directory and run packer build on
the relevant json file.

```bash
cd windows/templates/windows-2012R2-standard-amd64
packer build windows-vagrant.json
```

Reuse downloaded isos accross templates:

```bash
export PACKER_CACHE_DIR=~/packer-qemu-templates/iso
```

##Acknowledgements

This repo began as a fork of the
[packer-images](https://github.com/opentable/packer-images.git) that
again began as a fork of the
[packer-windows](https://github.com/joefitzgerald/packer-windows)

