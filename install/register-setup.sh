#!/bin/sh
# register setup script
wget https://raw.githubusercontent.com/bezahl-online/kassa/main/bezahlonlinekassa_stable.deb
sudo apt install -y nginx
sudo dpkg -i bezahlonlinekassa_stable.deb
