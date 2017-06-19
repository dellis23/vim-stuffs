export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

export PATH=$PATH:/Users/dan/Documents/android-sdk/sdk/platform-tools

alias countem="find . -name '*.py' | xargs wc -l"
alias countgo="find . -name '*.go' | xargs wc -l"

export GOPATH="$HOME/Documents/go/"
export PATH=$PATH:$GOPATH/bin
alias cdgo="cd $GOPATH/src/github.com/dellis23"

# startup virtualenv-burrito
if [ -f $HOME/.venvburrito/startup.sh ]; then
    . $HOME/.venvburrito/startup.sh
fi

if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi

if [ -f ~/setenv.sh ]; then
    . ~/setenv.sh
fi

#if [[ "$(uname)" == 'Darwin' ]]; then
    #alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"
#fi

##
# Your previous /Users/dan/.bash_profile file was backed up as /Users/dan/.bash_profile.macports-saved_2014-10-08_at_22:48:02
##

# MacPorts Installer addition on 2014-10-08_at_22:48:02: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

export NODE_PATH=/usr/local/lib/node_modules/

alias flushdns="sudo killall -HUP mDNSResponder"

REDDIT_PROFILE=~/.reddit_profile
test -f $REDDIT_PROFILE && source $REDDIT_PROFILE

alias flushdns2="sudo discoveryutil mdnsflushcache;sudo discoveryutil udnsflushcaches"

alias ac="source ~/Documents/venv/bin/activate"

##
# Your previous /Users/daniel.ellis/.bash_profile file was backed up as /Users/daniel.ellis/.bash_profile.macports-saved_2016-01-11_at_10:30:40
##

# MacPorts Installer addition on 2016-01-11_at_10:30:40: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi

mcshow() {
    for i in {1..100}; do echo stats cachedump $i 100000 | nc localhost 11211 | grep -i $1; done
}

mcdel() {
    for i in {1..100};
    do
        for key in $(echo stats cachedump $i 100000 | nc localhost 11211 | grep -i $1 | awk '{ print $2 }');
        do
            echo delete $key | nc localhost 11211;
        done
    done
}

export PATH="/usr/local/terraform/bin:$PATH"

validyaml() {
    ruby -e "require 'yaml';puts YAML.load_file('$1')"
}

if [ "$(uname)" != "Darwin" ]; then
    alias ls='ls --color=auto'
fi

alias notes='cat ~/notes | grep'

# added by Anaconda2 4.4.0 installer
export PATH="/Users/daniel.ellis/anaconda2/bin:$PATH"
