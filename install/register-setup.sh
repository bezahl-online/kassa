#!/bin/sh
# register setup script
echo "donwloading register package from Github.."

wget https://raw.githubusercontent.com/bezahl-online/kassa/main/bezahlonlinekassa_stable.deb

echo "installing X server and Nginx.."
sudo apt install -y --no-install-recommends nginx xserver-xorg x11-xserver-utils xinit xinput openbox libnss3-tools cups-client

# chromium browser needed until using tauri version of register
echo "installing chromium browser.."
sudo snap install chromium

echo "installing register.."
sudo dpkg -i bezahlonlinekassa_stable.deb

echo "installing printer driver.."
sudo dpkg --force-architecture -i /home/kassa/drivers/hll2310dpdrv-4.0.0-1.i386.deb
lpoptions -d HLL2310D -o PageSize=A4
lpstat -t


echo "cleanup.."
rm bezahlonlinekassa_stable.deb

echo "done."
