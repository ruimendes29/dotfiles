#!/usr/bin/env sh

sudo pacman -Sy ranger --noconfirm --needed --noconfirm
ln -sfT ~/.dotfiles/ranger/rc.conf  ~/.config/ranger/rc.conf

