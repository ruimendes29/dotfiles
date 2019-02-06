#!/usr/bin/env sh
# cenas
echo "Installing Git LFS..."
sudo apt-get install git-lfs
ln -sfT "$HOME/.dotfiles/git/gitconfig"  "$HOME/.gitconfig"

