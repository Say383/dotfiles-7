#!/usr/bin/env bash

BASE_DIR=$(dirname "${BASH_SOURCE[0]:-$0}")
cd "${BASE_DIR}/.." || exit 127

# shellcheck source=../scripts/extras.sh
. scripts/extras.sh

# sudo luarocks install --server=https://luarocks.org/dev luaformatter
install_package awesome

mkdir -p ~/.config/awesome
symlink ~/.dotfiles/awesome/rc.lua ~/.config/awesome/rc.lua

