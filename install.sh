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

# sudo curl -o /usr/share/backgrounds/wallpaper.jpg  "https://images.pexels.com/photos/1707213/pexels-photo-1707213.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
sudo curl -o /usr/share/backgrounds/wallpaper.jpg  "https://images.unsplash.com/photo-1477414348463-c0eb7f1359b6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80"
sudo curl -o /usr/share/backgrounds/login.jpg      "https://images.pexels.com/photos/1366957/pexels-photo-1366957.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"

cd "$SAVED_DIR"

