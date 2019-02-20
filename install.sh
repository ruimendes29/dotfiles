#!/usr/bin/env sh

echo "Updating packages..."
sudo pacman -Syu --needed --noconfirm

for pkg in "${PKG[@]}"
do
  echo "Installing ${pkg}..."
  sudo pacman -Syu "$pkg" --needed --noconfirm
done

for aur in "${AUR[@]}"
do
  echo "Installing ${aur}..."
  sudo yaourt -Syu "$aur" --needed --noconfirm
done

SAVED_DIR=$PWD

cd ~/.dotfiles

dirs=$(find . -maxdepth 1 -mindepth 1 -type d -not -name '.git' -print)
for dir in $dirs
do
  echo "Installing ${dir}..."
  sh "$dir"/install.sh
done

sudo curl -o /usr/share/backgrounds/wallpaper.jpg  "https://images.pexels.com/photos/1308624/pexels-photo-1308624.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"

cd "$SAVED_DIR"

