#!/bin/bash
set -e -E -u -o pipefail; shopt -s failglob;

# protect user privacy
wget -q -O - https://fixubuntu.com/fixubuntu.sh | bash
