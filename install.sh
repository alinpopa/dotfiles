#!/usr/bin/env sh

DOTFILES=~/dotfiles

ln -s ${DOTFILES}/.bash_profile ~/.bash_profile
ln -s ${DOTFILES}/.bashrc ~/.bashrc
ln -s /.gemrc ~/.gemrc
ln -s ${DOTFILES}/.vim ~/.vim
ln -s ${DOTFILES}/.vimrc ~/.vimrc
ln -s ${DOTFILES}/.zshrc ~/.zshrc
ln -s ${DOTFILES}/bin ~/bin

