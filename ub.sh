#!/bin/bash

echo Starting Ubuntu 21.04 forced upgrade

cd ~/

sudo mkdir hirsute

cd hirsute

UBUNTU=ubuntu-base-21.04-base-amd64.tar.gz

sudo wget http://cdimage.ubuntu.com/ubuntu-base/releases/hirsute/release/ubuntu-base-21.04-base-amd64.tar.gz

sudo tar -xzf $UBUNTU

cd etc

cd apt

sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak

sudo rm -rf /etc/apt/sources.list

sudo cp sources.list /etc/apt/

sudo cp trusted.gpg.d/* /etc/apt/trusted.gpg.d/

cd ..

sudo rm -rf /etc/os-release

sudo cp os-release /etc/

sudo apt update

sudo apt update

sudo apt upgrade -y

sudo rm -rf /var/lib/dpkg/info/postfix.postinst

sudo apt upgrade -y

clear

echo Starting gnome 40 installation

sudo apt update

sudo apt upgrade -y

sudo add-apt-repository ppa:shemgp/gnome-40

sudo apt update

sudo apt upgrade -y

sudo apt install mutter -y

sudo apt install gnome-shell -y

sudo apt install gnome-session -y

sudo apt install gnome -y

clear

echo Finished. Rebooting the system.

sudo reboot -f
