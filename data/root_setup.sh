#!/bin/sh

# Based on setup.sh from https://gun.io/blog/building-vagrant-machines-with-packer/

yum -y upgrade
yum -y install wget
useradd -G admin vagrant
cp /etc/sudoers /etc/sudoers.orig
sed -i -e '/Defaults\s\+env_reset/a Defaults\texempt_group=admin' /etc/sudoers
sed -i -e 's/%admin ALL=(ALL) ALL/%admin ALL=NOPASSWD:ALL/g' /etc/sudoers
