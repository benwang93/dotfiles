#!/bin/bash

DIR=~/dotfiles
LIST="vimrc zshrc zsh-config.sh"

git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

# Move old dotfiles

chmod +x zsh-config.sh

for file in $LIST
do
    mv ~/.${file} ~/.${file}.old
    ln -s ${DIR}/${file} ~/.${file}
done

ln -s ${DIR}/trozamon.zsh-theme ~/.oh-my-zsh/themes/trozamon.zsh-theme
