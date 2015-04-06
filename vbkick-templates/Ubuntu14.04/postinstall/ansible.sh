#!/bin/bash
set -e -E -u -o pipefail; shopt -s failglob;

# Install ansible
apt-get -y install ansible
