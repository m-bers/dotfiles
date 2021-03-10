# Dotfiles

    echo ".dot" >> .gitignore
    git clone https://github.com/m-bers/dotfiles.git $HOME/.dot
    alias dot='/usr/bin/git --git-dir=$HOME/.dot/.git --work-tree=$HOME'
    dot config --local status.showUntrackedFiles no
    dot checkout $HOME
