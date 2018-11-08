#!/usr/bin/env sh

echo "Installing Git LFS..."
sudo pacman -Syu git-lfs --needed --noconfirm

ln -sfT "$HOME/.dotfiles/git/gitconfig"  "$HOME/.gitconfig"

<<<<<<< HEAD
ln -sfT ~/.dotfiles/git/gitconfig ~/.gitconfig
=======
>>>>>>> 8d0471f
