#!/bin/sh
# register setup script
VERSION="1.2.0"
wget https://raw.githubusercontent.com/bezahl-online/kassa/main/install/register-setup.sh
-o bezahlonlinekassa.deb https://raw.githubusercontent.com/bezahl-online/kassa/bezahlonlinekassa_stable.deb
sudo apt install nginx
sudo dpkg -i bezahlonlinekassa_stable.deb
