#!/bin/bash

path=$(pwd)

# dependencies
brew install nvm neofetch htop wget node neovim ripgrep tmux lua fzf fd exa bat zoxide ffmpeg lazygit tree-sitter

# rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# fish
ln -s $path/fish ~/.config/fish

# neovim
mkdir -p ~/.config
ln -s $path/nvim ~/.config/nvim
ln -s $path/lazyvim ~/.config/lazyvim

# zellij
ln -s $path/zellij ~/.config/zellij
cargo install --locked zellij

# tmux
ln -s $path/tmux/.tmux.conf ~/.tmux.conf
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# fzf
$(brew --prefix)/opt/fzf/install

# bat
mkdir -p "$(bat --config-dir)/themes"
ln -s $path/zsh/bat/*.tmTheme ~/.config/bat/themes
bat cache --build
