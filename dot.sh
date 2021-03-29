#!/bin/zsh

echo ".dot" >> .gitignore
git clone https://github.com/m-bers/dotfiles.git $HOME/.dot
alias dot='/usr/bin/git --git-dir=$HOME/.dot/.git --work-tree=$HOME'
dot config --local status.showUntrackedFiles no
dot switch dot
dot checkout $HOME
dot submodule update --init --recursive
source ~/.zshrc
