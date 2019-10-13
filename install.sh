#!/bin/bash
READLINK=readlink
if [ "$(uname)" = "Darwin" ]; then
    READLINK=greadlink
fi
which -s $READLINK || { echo "Couldn't find an appropriate readlink.  If you're on mac, try 'brew install greadlink'." ; exit 1; }

if [ -d "$HOME/.vim" ]; then
    echo "$HOME/.vim already exists.  Skipping!"
else
    ln -s $($READLINK -f .vim) ~/.vim
fi
ln -s $($READLINK -f .vimrc) ~/.vimrc
ln -s $($READLINK -f .pdbrc) ~/.pdbrc
ln -s $($READLINK -f .bash_profile) ~/.bash_profile
ln -s $($READLINK -f .screenrc) ~/.screenrc
ln -s $($READLINK -f .git-completion.bash) ~/.git-completion.bash
git config --global core.excludesfile $($READLINK -f .gitignore)
