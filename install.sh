#!/bin/bash

DIR=~/dotfiles
LIST="vimrc zshrc zsh-config.sh"
# Move old dotfiles

chmod +x zsh-config.sh

for file in $LIST
do
    mv ~/.${file} ~/.${file}.old
    ln -s ${DIR}/${file} ~/.${file}
done

ln -s ${DIR}/trozamon.zsh-theme ~/.oh-my-zsh/themes/trozamon.zsh-theme
