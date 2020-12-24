#!/bin/bash

# shellcheck source=distro.sh
. ../distro.sh
# shellcheck source=helpers.sh
. ../helpers.sh

echo_info "Symling i3 configuration file..."
mkdir -p ~/.i3
ln -sfT ~/.dotfiles/i3wm/config ~/.i3/config

python3 -m pip install i3ipc

echo_done "i3wm configuration!"
