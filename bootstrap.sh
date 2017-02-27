#!/bin/bash

# get a list of all the dotfiles
DOTFILES=$(ls -a -I . -I .. -I .git -I bootstrap.sh -I README.md)

# check none of these files already exist in home
# (all deletion is manual, just in case...)
for file in $DOTFILES; do
    if [ -f ~/$file ] || [ -d ~/$file ]; then
        if [ ! -L ~/$file ]; then  # check it's not a symlink
            echo "$file already exists in your home directory, please remove so symbolic link can be setup"
            exit 1
        fi
    fi
done

# create the symlinks...
for file in $DOTFILES; do
    echo "creating symlink for $file"
    ln -sf $(pwd)/$file ~/$file
done
