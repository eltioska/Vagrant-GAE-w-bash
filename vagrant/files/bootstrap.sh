#!/bin/bash
echo -e "\e[1;33m[gae-BOX]: Ska's Shell Script 01. Executing.\e[0m";

# install required packages
echo "Updating/Installing required packages"
sudo apt-get -qq update --fix-missing
sudo apt-get -qq install git --assume-yes

# Setup the system to handle compiling and installing from source.
sudo apt-get install build-essential

# Install the language pack
sudo apt-get install language-pack-en

# Fix the 'command-not-found has crashed' error on Ubuntu 12.04
# (it's due to a locale setting)
# REFs:
# http://www.thattommyhall.com/2012/12/12/sorry-command-not-found-has-crashed/
# http://www.digimantra.com/open-source/ubuntu/command-not-found-crashed/
sudo locale-gen en_GB.UTF-8
sudo update-locale LANG=en_GB.UTF-8

# The node.js install script uses curl, so we will need to install curl.
sudo apt-get install curl

# INSTALL PYTHON, PIP & VIRTUALENV
sudo apt-get install -y python
sudo apt-get install -y python-dev
sudo apt-get install -y python-pip

sudo pip install --upgrade pip


# OTHER ITEMS TO INSTALL:
sudo apt-get install -y git zip unzip
# sudo apt-get install -y mysql-server mysql-client memcached


# and the following ruby gems:
sudo gem install sass
sudo gem install compass

# set custom bashrc
cp /vagrant/files/bashrc ~/.bashrc
# Load .bashrc if it exists
test -f ~/.bashrc && source ~/.bashrc
