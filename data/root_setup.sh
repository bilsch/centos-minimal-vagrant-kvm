#!/bin/sh

set -x

# Based on setup.sh from https://gun.io/blog/building-vagrant-machines-with-packer/

yum -y upgrade
yum -y install wget
/sbin/useradd -G wheel vagrant
cp /etc/sudoers /etc/sudoers.orig
mv /tmp/sudoers /etc
chmod 0440 /etc/sudoers
chown root:root /etc/sudoers
