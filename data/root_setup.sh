#!/bin/sh

set -x

# Based on setup.sh from https://gun.io/blog/building-vagrant-machines-with-packer/

yum -y upgrade
yum -y install wget
/sbin/useradd -G wheel vagrant
cp /etc/sudoers /etc/sudoers.orig
sed -i -e '/Defaults\s\+env_reset/a Defaults\texempt_group=wheel' /etc/sudoers
sed -i -e '/requiretty/s/^/#' -e '/NOPASSWD/s/^#//' /etc/sudoers
