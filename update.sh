#!/bin/sh

cp -f ~/.zshrc ~/.root/repos/dotfiles
cp -f ~/.xinitrc ~/.root/repos/dotfiles
cp -rf ~/.local/bin ~/.root/repos/dotfiles/.local
cp -rf ~/.local/scripts ~/.root/repos/dotfiles/.local
cp -rf ~/.config/alacritty ~/.root/repos/dotfiles/.config
cp -rf ~/.config/dmenu ~/.root/repos/dotfiles/.config
cp -rf ~/.config/dwm ~/.root/repos/dotfiles/.config
cp -rf ~/.config/dwmblocks ~/.root/repos/dotfiles/.config
cp -rf ~/.config/sxhkd ~/.root/repos/dotfiles/.config
cp -rf ~/.config/pipewire ~/.root/repos/dotfiles/.config
cp -rf ~/.config/nvim ~/.root/repos/dotfiles/.config
cp -rf ~/.config/slock ~/.root/repos/dotfiles/.config
cp -rf ~/.config/rofi ~/.root/repos/dotfiles/.config

echo "all done mate, bye"
