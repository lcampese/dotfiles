#!/bin/zsh

touch ~/.hushlogin
ln -s ~/.dotfiles/zshrc ~/.zshrc
source ~/.zshrc

ln -s ~/.dotfiles/gitconfig ~/.gitconfig

ln -s ~/.dotfiles/vimrc ~/.vimrc
ln -s ~/.dotfiles/vim ~/.vim
vim +PlugInstall +qall
