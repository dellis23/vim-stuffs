export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

export PATH=$PATH:/Users/dan/Documents/android-sdk/sdk/platform-tools

alias stew="ssh sauce@dan.dev.saucelabs.net"
alias saucedrip="cd /Users/dan/Documents/sauce; workon sauce; drip -p3422 -s sauce@dan.dev.saucelabs.net:/home/sauce/sauce"
alias scdev3drip="cd /Users/dan/Documents/sauce; workon sauce; drip -p3422 -s scdev3.saucelabs.net:/home/dan/sauce"
alias scdev1drip="cd /Users/dan/Documents/sauce; workon sauce; drip -p3422 -s scdev1.saucelabs.net:/home/dan/stage/saucelabs"
alias cds="cd /Users/dan/Documents/sauce; workon sauce"
alias smoke='git push origin $(git rev-parse --abbrev-ref HEAD):smoke-dellis -f'

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
