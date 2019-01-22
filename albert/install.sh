#!/usr/bin/env sh

read -p "Have you installed Albert already?" -n 1 -r
echo
if [[ $REPLY =~ ^[Nn]$ ]]
then
  sudo yaourt -S albert --needed --noconfirm
fi

sudo ln -sfT ~/.dotfiles/albert/albert.conf  ~/.config/albert/albert.conf
sudo ln -sfT ~/.dotfiles/albert/engines.json ~/.config/albert/org.albert.extension.websearch/engines.json

curl -o ~/.config/albert/org.albert.extension.websearch/gitlab. "https://about.gitlab.com/images/press/logo/logo.png"
curl -o ~/.config/albert/org.albert.extension.websearch/amazon. "https://upload.wikimedia.org/wikipedia/commons/thumb/7/70/Amazon_logo_plain.svg/2000px-Amazon_logo_plain.svg.png"
