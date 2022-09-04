#!/bin/sh
# register setup script
VERSION="1.2.0"
wget -o bezahlonlinekassa.deb https://github.com/bezahl-online/kassa.deb/releases/download/v1.2.0/bezahlonlinekassa${VERSION}.deb
sudo apt install nginx
sudo dpkg -i bezahlonlinekassa.deb
