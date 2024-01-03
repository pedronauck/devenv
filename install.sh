#!/bin/bash

path=$(pwd)

# dependencies
brew install nvm neofetch htop wget neovim ripgrep tmux lua fzf fd exa bat zoxide ffmpeg lazygit tree-sitter fontforge lazydocker youtube-dl

# rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# fish
# TODO: link this is not working
# ln -sf $path/fish ~/.config/fish

# neovim
mkdir -p ~/.config
# ln -sf $path/nvim ~/.config/nvim
ln -sf $path/lazyvim ~/.config/nvim

# tmux
ln -sf $path/tmux/.tmux.conf ~/.tmux.conf
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# fzf
$(brew --prefix)/opt/fzf/install

# bat
mkdir -p "$(bat --config-dir)/themes"
ln -sf $path/bat/*.tmTheme ~/.config/bat/themes
bat cache --build

# wezterm
ln -sf $path/.wezterm.lua ~/.wezterm.lua
