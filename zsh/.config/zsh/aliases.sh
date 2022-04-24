alias rzs='source $HOME/.config/zsh/.zshrc'
alias ah='cat $HOME/.config/zsh/aliases.sh'
alias ahg='cat $HOME/.config/zsh/aliases.sh | grep'

# ls
alias ls='ls --color=always --group-directories-first'
alias la='ls -a --color=always --group-directories-first'

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
alias drdc='sudo docker run -ti --rm \
    -e HOME=${HOME} \
    -v ${HOME}:${HOME}/ \
    -v /etc/group:/etc/group:ro \
    -v /etc/passwd:/etc/passwd:ro \
    -v /etc/localtime:/etc/localtime:ro \
    -u $(id -u ${USER}):$(id -g ${USER})\
    -h devcontainer -w $(pwd)'

# dotfiles bare repo
# deprecated
# alias dotf='/usr/bin/git --git-dir=$HOME/.dotfiles-bare/ --work-tree=$HOME'

# ssh
alias sadd='source dssh-add'
alias sshas='eval "$(ssh-agent -s)"'

# poetry
alias pr='poetry run'
alias prp='poetry run python'
