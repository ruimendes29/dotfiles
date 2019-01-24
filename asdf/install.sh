#!/usr/bin/env sh

# Download asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf

# Connect .dotfiles asdf config with actual configuration folder
ln -sfT ~/.dotfiles/asdf/asdfrc        ~/.asdfrc
ln -sfT ~/.dotfiles/asdf/tool-versions ~/.tool-versions

