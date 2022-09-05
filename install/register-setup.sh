#!/bin/sh
# register setup script
wget https://raw.githubusercontent.com/bezahl-online/kassa/main/bezahlonlinekassa_stable.deb
sudo apt install -y --no-install-recommends nginx xserver-xorg x11-xserver-utils xinit xinput openbox libnss3-tools
sudo dpkg -i bezahlonlinekassa_stable.deb
rm bezahlonlinekassa_stable.deb
