#!/usr/bin/env sh

echo "Installing ZSH with OH-MY-ZSH..."
sudo pacman -Syu zsh --needed --noconfirm

<<<<<<< HEAD
ln -sfT ~/.dotfiles/zsh/zshrc ~/.zshrc
=======
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
>>>>>>> 8d0471f

git clone https://github.com/bhilburn/powerlevel9k.git             "$HOME/.oh-my-zsh/custom/themes/powerlevel9k"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting"
git clone https://github.com/zsh-users/zsh-autosuggestions         "$HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions"

ln -sfT "$HOME/.dotfiles/zsh/zshrc"   "$HOME/.zshrc"

chsh -s "$(command -v zsh)"

