Packer Centos template
==============

Packer template to make VirtualBox images.

Notes
-----
- CentOS 64-bit VM (6.7 & 7.2)
- 40G disk
- EPEL repo
- Puppet 4
- no SELinux
- no Firewall

Packer version: 0.8.6

Usage
=====

Installing Packer
-----------------

Download the latest packer from http://www.packer.io/downloads.html


Running Packer
--------------

`$ packer build stark-cent7.2.json`
