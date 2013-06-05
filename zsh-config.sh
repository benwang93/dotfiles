#!/bin/bash

# zsh config editor

ZSH_TEMP=~/.zshrc-tmp

cp ~/.zshrc $ZSH_TEMP
vim ~/.zshrc

source ~/.zshrc

/bin/zsh

read -p "Is this good?" NEW_IS_GOOD

if [ $NEW_IS_GOOD = "y" ]
then
    echo "Saving new config"
else
    echo "Not saving new config"
    mv $ZSH_TEMP ~/.zshrc
fi
