#!/usr/bin/env sh

DOTFILES=~/dotfiles

FILES=".gemrc \
  .vim \
  .vimrc \
  .zshrc \
  .kerlrc \
  .screenrc \
  bin \
  zsh_completions \
  .tmux.conf"

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

