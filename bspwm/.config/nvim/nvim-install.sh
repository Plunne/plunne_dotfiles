#! /bin/sh

pkg_manager=pacman
pkg_update=sudo $pkg_manager -Syu
pkg_install=sudo $pkg_manager -S

# Install packages
$pkg_update
$pkg_install xsel python-pip nodejs npm

# Setup Neovim
pip install pynvim
sudo npm i -g neovim
