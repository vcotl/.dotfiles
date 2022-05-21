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

export XDG_DOWNLOAD_DIR="$HOME/dl"
export XDG_PICTURES_DIR="$HOME/pix"
export XDG_DOCUMENTS_DIR="$HOME/dox"
export XDG_MUSIC_DIR="$HOME/music"
export XDG_VIDEOS_DIR="$HOME/vids"

export PASSWORD_STORE_DIR="$XDG_DATA_HOME/pass"
export TMUX_TMPDIR="$XDG_RUNTIME_DIR"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME/java"

# ZSH
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export PATH="$PATH:$HOME/.config/zsh/executable/"
export WINEFSYNC=1
