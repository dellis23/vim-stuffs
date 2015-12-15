#!/bin/bash
ln -s $(readlink -f .vim) ~/.vim
ln -s $(readlink -f .vimrc) ~/.vimrc
ln -s $(readlink -f .bash_profile) ~/.bash_profile
