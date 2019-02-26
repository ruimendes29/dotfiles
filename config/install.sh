#!/usr/bin/env sh

ln -sfT ~/.dotfiles/config/profile ~/.profile
ln -sfT ~/.dotfiles/config/okularpartrc ~/.config/okularpartrc

# Install Noto Color Emoji Font
sudo cp ~/.dotfiles/config/50-noto-color-emoji.conf /etc/fonts/conf.d/
sudo cp ~/.dotfiles/config/50-noto-color-emoji.conf /home/ruimendes/.fonts/

