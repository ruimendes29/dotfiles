<<<<<<< HEAD
#!/bin/bash

sudo apt install software-properties-common
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt install neovim -y

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -sfT ~/.dotfiles/nvim/init.vim ~/.config/nvim/init.vim
=======
#!/usr/bin/env sh

echo "Installling Neovim..."
sudo pacman -Syu neovim

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -sfT ~/.dotfiles/nvim/init.vim ~/.config/nvim/init.vim

>>>>>>> 8d0471f
