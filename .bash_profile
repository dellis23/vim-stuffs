# Purple, Blue, and Green
#export PS1="\n\[\e[0;36m\]\$(TZ=":America/Los_Angeles" date +'%r') \[\e[1;30m\][\[\e[0;37m\]\!\[\e[1;30m\]] \[\e[1;30m\][\[\e[1;35m\]\u\[\e[1;37m\]@\[\e[1;34m\]\H\[\e[1;30m\]] \[\e[1;37m\]\$PWD\[\e[0;37m\] \n\$ "

# Purple and Orange
export PS1="\n\[\e[38;5;105m\$(TZ=":America/Los_Angeles" date +'%r') \[\e[1;30m\][\[\e[0;37m\]\!\[\e[1;30m\]] \[\e[1;30m\][\e[38;5;213m\u\[\e[1;37m\]@\e[38;5;202m\H\[\e[1;30m\]] \[\e[1;37m\]\$PWD\[\e[0;37m\] \n\$ "

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

alias r='echo -en "\e[?25h"; reset'

#
# History
#
# Avoid duplicates
HISTCONTROL=ignoredups:erasedups
# When the shell exits, append to the history file instead of overwriting it
shopt -s histappend

# After each command, append to the history file and reread it
#PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c;
#history -r"
