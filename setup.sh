#!/bin/sh

cp -f ~/.zshrc ~/repos/dotfiles
cp -f ~/.zprofile ~/repos/dotfiles
cp -f ~/.xinitrc ~/repos/dotfiles
cp -rf ~/.local/bin ~/repos/dotfiles/.local
cp -rf ~/.local/scripts ~/repos/dotfiles/.local
cp -rf ~/.config/alacritty ~/repos/dotfiles/.config
cp -rf ~/.config/dmenu ~/repos/dotfiles/.config
cp -rf ~/.config/dwm ~/repos/dotfiles/.config
cp -rf ~/.config/dwmblocks ~/repos/dotfiles/.config
cp -rf ~/.config/sxhkd ~/repos/dotfiles/.config
cp -rf ~/.config/pipewire ~/repos/dotfiles/.config
cp -rf ~/.config/pipewire ~/repos/dotfiles/.config
cp -rf ~/.config/nvim ~/repos/dotfiles/.config
cp -rf ~/.config/slock ~/repos/dotfiles/.config

echo "all done mate, bye"
