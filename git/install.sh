#!/usr/bin/env sh

echo "Installing Git LFS..."
sudo apt-get install git-lfs
ln -sfT "$HOME/.dotfiles/git/gitconfig"  "$HOME/.gitconfig"

