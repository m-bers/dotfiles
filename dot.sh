#!/bin/zsh

echo ".dot" >> .gitignore
git clone https://github.com/m-bers/dotfiles.git $HOME/.dot
alias dot='/usr/bin/git --git-dir=$HOME/.dot/.git --work-tree=$HOME'
dot config --local status.showUntrackedFiles no
dot switch dot
dot checkout $HOME
dot submodule update --init --recursive
cd ~/Library/Fonts && { 
    curl -LO 'https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf'
    curl -LO 'https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf'
    curl -LO 'https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf'
    curl -LO 'https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf'
    cd -; }
