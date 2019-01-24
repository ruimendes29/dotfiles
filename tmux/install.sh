#!/usr/bin/env sh

# sh -c "$(curl -fsSL https://raw.githubusercontent.com/pwittchen/spotify-cli-linux/master/install.sh)"

# Install Tmux
echo "Installing Tmux..."
sudo pacman -Syu tmux --needed --noconfirm

# Install plugins
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Link .dotfiles tmux config with actual config
ln -sfT ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf

