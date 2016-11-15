# PS1
NORMAL="\[\e[0m\]"
GREEN="\[\e[1;32m\]"
CYAN="\[\e[36m\]"
export PS1="$GREEN\u : $CYAN\W$GREEN \$ $NORMAL"

# ls colors
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Java Home
export JAVA_HOME=$(/usr/libexec/java_home)

if [ -f $HOME/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# add the bin to PATH if found
if [ -d $HOME/bin ]; then
    export PATH=~/bin:$PATH
fi

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Load the git autom comletition
[[ -s "$HOME/.git-completion.bash" ]] && source "$HOME/.git-completion.bash"

export SSL_CERT_FILE=/usr/local/etc/cacert.pem

export EDITOR=/usr/local/bin/vim
