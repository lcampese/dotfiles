#!/bin/zsh

ln -s ~/.dotfiles/zshrc ~/.zshrc
source ~/.zshrc
touch ~/.hushlogin

ln -s ~/.dotfiles/gitconfig ~/.gitconfig

ln -s ~/.dotfiles/vimrc ~/.vimrc
ln -s ~/.dotfiles/vim ~/.vim
vim -c PlugInstall -c qall
