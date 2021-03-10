# Dotfiles

    echo ".dot" >> .gitignore
    git clone https://github.com/m-bers/dotfiles.git $HOME/.dot
    alias dot='/usr/bin/git --git-dir=$HOME/.dot/.git --work-tree=$HOME'
    config config --local status.showUntrackedFiles no
    config checkout
