#!/usr/bin/env sh

# Install termite
sudo pacman -Syu termite --needed --noconfirm

# Apply config
ln -sfT ~/.dotfiles/termite/config  ~/.config/termite/config

