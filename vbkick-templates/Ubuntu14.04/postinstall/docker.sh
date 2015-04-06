#!/bin/bash
set -e -E -u -o pipefail; shopt -s failglob;

# Install docker.io
apt-get -y install docker.io
ln -sf /usr/bin/docker.io /usr/local/bin/docker

# Update grub to enable memory and swap accounting (reboot required): http://docs.docker.io/en/latest/installation/kernel/
sed -i 's:^#GRUB_CMDLINE_LINUX=:GRUB_CMDLINE_LINUX=:' /etc/default/grub
sed -i 's:^GRUB_CMDLINE_LINUX=.*:GRUB_CMDLINE_LINUX="cgroup_enable=memory swapaccount=1":' /etc/default/grub
update-grub

# Update firewall to all forwarding traffic
sed -i 's:^DEFAULT_FORWARD_POLICY="DROP":DEFAULT_FORWARD_POLICY="ACCEPT":' /etc/default/ufw
ufw reload
ufw allow 4243/tcp

# Quick test
# sudo lxc-checkconfig
# sudo service docker status
# sudo docker info
# sudo docker run -i -t ubuntu /bin/bash
# sudo docker run -dns 8.8.8.8 centos ping google.com
