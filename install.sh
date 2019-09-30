#!/bin/bash
if [ -d "$HOME/.vim" ]; then
    echo "$HOME/.vim already exists.  Skipping!"
else
    ln -s $(readlink -f .vim) ~/.vim
fi
ln -s $(readlink -f .vimrc) ~/.vimrc
ln -s $(readlink -f .pdbrc) ~/.pdbrc
ln -s $(readlink -f .bash_profile) ~/.bash_profile
ln -s $(readlink -f .screenrc) ~/.screenrc
ln -s $(readlink -f .git-completion.bash) ~/.git-completion.bash
git config --global core.excludesfile $(readlink -f .gitignore)
