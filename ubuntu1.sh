#! /bin/sh

if [ ! $(whoami) = 'root' ]; then
  echo "Need to run this with sudo"
  exit 9
fi

setopt -e
export DEBIAN_FRONTEND=noninteractive
apt-get update
apt-get upgrade -y
if [ -f /var/run/reboot-required ]; then
  reboot now
fi

# apt-get install -y needrestart unattended-upgrades apt-listchanges
# echo unattended-upgrades unattended-upgrades/enable_auto_updates boolean true | debconf-set-selections
# dpkg-reconfigure -f noninteractive unattended-upgrades


