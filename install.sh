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

sudo curl -o /usr/share/backgrounds/wallpaper.jpg  "http://xboxportugal.com/wp-content/uploads/2018/08/minimalist-wallpaper-anime-1920x1080-fox-forest-minimalism-artwork-es.jpg"

cd "$SAVED_DIR"

