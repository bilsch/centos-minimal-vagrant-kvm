#!/bin/sh

# Installing vagrant keys
cd ~vagrant
mkdir .ssh
chmod 700 .ssh
cd .ssh
wget --no-check-certificate 'https://raw.github.com/bilsch/centos-minimal-vagrant-kvm/master/data/insecure-vagrant.pub' -O authorized_keys
chmod 600 authorized_keys
chown -R vagrant ~vagrant
