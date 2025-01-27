#!/bin/bash

echo "Setting up environment..."

# Clone dotfiles repository
cd ~
git clone https://github.com/nickypro/ai_dotfiles.git

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Powerlevel10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k

# Install Zsh plugins
git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Create symbolic links
ln -sf ~/ai_dotfiles/.zshrc ~/.zshrc
ln -sf ~/ai_dotfiles/.vimrc ~/.vimrc
ln -sf ~/ai_dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/ai_dotfiles/.p10k.zsh ~/.p10k.zsh

# Reload Zsh to apply changes
source ~/.zshrc

