alias rzs='source $HOME/.config/zsh/.zshrc'
alias ah='cat $HOME/.config/zsh/aliases.sh'
alias ahg='cat $HOME/.config/zsh/aliases.sh | grep'

# ls
alias ls='ls --color=always --group-directories-first'
alias la='ls -A --color=always --group-directories-first'
alias lg='ls -A --color=always --group-directories-first | grep'
alias lsl='ls -XGlh --color=always --group-directories-first'
alias lal='ls -AXGlh --color=always --group-directories-first'
alias lgl='ls -AXGlh --color=always --group-directories-first | grep'

# other
alias cl='clear'
alias lc='clear'

# xbps
alias sxi='sudo xbps-install -Su'
alias sxr='sudo xbps-remove'
alias xqm='sudo xbps-query -m'
alias xqrs='sudo xbps-query -Rs'

# docker
alias dp='sudo docker ps'
alias dra='sudo docker rm $(sudo docker ps -aq)'
alias dil='sudo docker image ls'
alias dira='sudo docker image rm $(sudo docker image ls -aq)'
alias drdc='sudo xhost +"local:docker@" && sudo docker run -ti --rm \
    -e HOME=${HOME} \
    -e DISPLAY=${DISPLAY} \
    -v ${HOME}:${HOME}/ \
    -v /etc/group:/etc/group:ro \
    -v /etc/passwd:/etc/passwd:ro \
    -v /etc/localtime:/etc/localtime:ro \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -u $(id -u ${USER}):$(id -g ${USER})\
    -h devcontainer -w $(pwd)'

# dotfiles bare repo
# deprecated
# alias dotf='/usr/bin/git --git-dir=$HOME/.dotfiles-bare/ --work-tree=$HOME'

# ssh
alias sadd='source ssh-upadd'
alias sshas='eval "$(ssh-agent -s)"'

# poetry
alias pr='poetry run'
alias prp='poetry run python'
