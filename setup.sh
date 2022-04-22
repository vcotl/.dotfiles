#!/bin/bash
shopt -s expand_aliases

DIR=$HOME/.dotfiles

git clone https://github.com/vkot1/.dotfiles.git $DIR

alias stowit='stow -v -R -d $DIR'
pkgs=($(ls -d $DIR/*/ | sed 's:'"$DIR"'/\(.*\)/:\1:'))
ignore=(
    firefox
)

for p in ${pkgs[@]}; do
   ! [[ ${ignore[*]} =~ $p ]] && stowit $p
done
