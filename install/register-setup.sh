#!/bin/sh
# register setup script
echo "donwloading register package from Github.."

wget https://raw.githubusercontent.com/bezahl-online/kassa/main/bezahlonlinekassa_stable.deb

echo "installing X server and Nginx.."
sudo apt install -y --no-install-recommends nmap nginx xserver-xorg x11-xserver-utils xinit xinput openbox libnss3-tools cups cups-client

# chromium browser needed until using tauri version of register
echo "installing chromium browser.."
sudo snap install chromium

echo "finding payment terminal.."
network=$(echo $(ip a | grep -Eo 'inet (addr:)?([0-9]*\.){3}' | grep -Eo '([0-9]*\.){3}' | grep -v '127.0.0.')0/24)
ptaddr=$(echo $(nmap -p 20007 $network | tr '\n' ' ' | tr 'N' '\n' | grep open | awk '{print $6}' | tr '()' ' '))
sudo sh -c "echo $ptaddr pt >>/etc/hosts"

echo "installing register.."
sudo dpkg -i bezahlonlinekassa_stable.deb

echo "installing printer driver.."
sudo dpkg --force-architecture -i /home/kassa/drivers/hll2310dpdrv-4.0.0-1.i386.deb
sudo lpadmin -d HLL2310D
lpoptions -d HLL2310D -o PageSize=A4
lpstat -t

# FIXME: find PT IP and store in /etc/hosts

echo "cleanup.."
rm bezahlonlinekassa_stable.deb

echo "done."
