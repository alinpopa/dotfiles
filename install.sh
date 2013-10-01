#!/usr/bin/env sh

DOTFILES=~/dotfiles

FILES=".bash_profile \
  .bashrc \
  .gemrc \
  .vim \
  .vimrc \
  .zshenv \
  .zshrc \
  .zprofile \
  .kerlrc \
  .screenrc \
  bin \
  zsh_completions"

# Remove symlinks
for file in $FILES
do
  rm ~/${file}
done

# Symlink files
for file in $FILES
do
  ln -s ${DOTFILES}/${file} ~
done

