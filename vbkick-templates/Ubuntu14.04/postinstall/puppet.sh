#!/bin/bash
set -e -E -u -o pipefail; shopt -s failglob;

if [[ ! -f "/etc/apt/sources.list.d/puppetlabs.list" ]]; then
    wget -O /tmp/puppetlabs-release-trusty.deb http://apt.puppetlabs.com/puppetlabs-release-trusty.deb
    dpkg -i /tmp/puppetlabs-release-trusty.deb
    rm -f /tmp/puppetlabs-release-trusty.deb
    apt-get -y update
fi
apt-get install -y hiera puppet facter
