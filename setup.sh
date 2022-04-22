#!/bin/bash
shopt -s expand_aliases

DIR=$HOME/.dotfiles

alias stowit='stow -v -R'
pkgs=($(ls -d $DIR/*/ | sed 's:'"$DIR"'/\(.*\)/:\1:'))
ignore=(
    firefox
)

for p in ${pkgs[@]}; do
   ! [[ ${ignore[*]} =~ $p ]] && stowit $p
done
