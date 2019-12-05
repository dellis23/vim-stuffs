export PS1="\n\[\e[0;36m\]\$(TZ=":America/Los_Angeles" date +'%r') \[\e[1;30m\][\[\e[0;37m\]\!\[\e[1;30m\]] \[\e[1;30m\][\[\e[1;35m\]\u\[\e[1;37m\]@\[\e[1;34m\]\H\[\e[1;30m\]] \[\e[1;37m\]\$PWD\[\e[0;37m\] \n\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

alias grep='grep --color=auto'

alias flushdns="sudo killall -HUP mDNSResponder"

alias flushdns2="sudo discoveryutil mdnsflushcache;sudo discoveryutil udnsflushcaches"

if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi

if [ "$(uname)" != "Darwin" ]; then
    alias ls='ls --color=auto'
fi

alias notes='cat ~/notes | grep'

export PATH="/usr/local/opt/python/libexec/bin:$PATH"
