
##Introduction

The packer-qemu-images is a project that provides easy building of relevant images in the qemu format.

##Usage

Reuse downloaded isos accross templates:

export PACKER_CACHE_DIR=~/packer-qemu-templates/iso

###Linux

###Windows
Within in each template your will find an individual README (for example: README.md) which will describe how to use the template to build an image.

What you will first need is an iso for the operating system that you are looking to build and you will place that within the `iso` directory (`en_windows_server_2008_datacenter_enterprise_standard_x64_dvd_x14-26714.iso`)

Then from within each template directory you will find a json file (e.g. `windows/templates/windows-2008R2-serverstandard-amd64/windows_2008_r2.json`)

From there you can run packer: `packer build windows_2008_r2.json` which will build you your image


##Acknowledgements
This repo began as a fork of the [packer-images](https://github.com/opentable/packer-images.git) that again began as a fork of the [packer-windows](https://github.com/joefitzgerald/packer-windows)

