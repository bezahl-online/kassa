#!/bin/sh
# register setup script
wget https://raw.githubusercontent.com/bezahl-online/kassa/main/install/register-setup.sh
sudo apt install nginx
sudo dpkg -i bezahlonlinekassa_stable.deb
