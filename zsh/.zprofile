#!/bin/zsh

# Environment
export EDITOR="nvim"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

if [[ -z $XDG_RUNTIME_DIR ]]; then
    export XDG_RUNTIME_DIR="/tmp/$USER-runtime"
    [[ ! -d $XDG_RUNTIME_DIR ]] && mkdir -m 0700 $XDG_RUNTIME_DIR
fi

export XDG_DOWNLOAD_DIR="$HOME/Downloads"
export XDG_PICTURES_DIR="$HOME/Pictures"

# ZSH
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export PATH="$PATH:$HOME/.scripts/"
