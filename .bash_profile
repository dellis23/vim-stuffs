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

alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"

##
# Your previous /Users/dan/.bash_profile file was backed up as /Users/dan/.bash_profile.macports-saved_2014-10-08_at_22:48:02
##

# MacPorts Installer addition on 2014-10-08_at_22:48:02: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

export NODE_PATH=/usr/local/lib/node_modules/

source ~/.sauce_profile
