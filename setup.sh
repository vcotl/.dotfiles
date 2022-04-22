#!/bin/bash
shopt -s expand_aliases
DIR=$HOME/.dotfiles
git clone https://github.com/vkot1/.dotfiles.git $DIR
pkgs=($(ls -d $DIR/*/ | sed 's:'"$DIR"'/\(.*\)/:\1:'))
ignore=(firefox)
for p in ${pkgs[@]}; do ! [[ ${ignore[*]} =~ $p ]] && stow -v -R -d $DIR $p; done
