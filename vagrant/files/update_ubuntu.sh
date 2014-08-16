#!/bin/bash
echo -e "\e[1;33m[gae-BOX]: Ska's Shell Script 03. Executing.\e[0m";

# PER RECOMMENDED BY UBUNTU SYSTEM AFTER INSTALL:
# Install a newer HWE version by running:
# apt-get:
# -qq   no output except for errors
# -y    assume yes to all queries and do not prompt
sudo apt-get -qq install -y linux-generic-lts-trusty linux-image-generic-lts-trusty

# WARNING MESSAGE WAS:
# Your current Hardware Enablement Stack (HWE) is no longer supported
# since 2014-08-07.  Security updates for critical parts (kernel
# and graphics stack) of your system are no longer available.
