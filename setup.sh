#!/bin/bash

SCRIPT_PATH=`dirname $0`

# copy bash profile
cp $SCRIPT_PATH/bash_profile ~/.bash_profile
# copy bash aliases
cp $SCRIPT_PATH/bash_aliases ~/.bash_aliases

# copy vim configuration
cp $SCRIPT_PATH/vimrc ~/.vimrc
# copy vim plugins configuration
rm -rf ~/.vim
cp -r $SCRIPT_PATH/vim ~/.vim
