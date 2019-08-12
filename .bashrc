# Aliases
alias ll="ls -l"
alias ls="ls -lhpG"
alias jq="jq -CS"
alias check-todo="grep -ir --exclude-dir={.git,.idea,.vscode,node_modules} 'todo' ."
alias celar="clear"
alias config='/usr/bin/git --git-dir=/Users/traci/.cfg/ --work-tree=/Users/traci'

if [ -f ~/.secret ]; then
    source ~/.secret
fi

# Enable tab completion
source ~/git-completion.bash

# colors!
green="\[\033[0;32m\]"
blue="\[\033[0;34m\]"
red="\[\033[38;5;203m\]"
reset="\[\033[0m\]"

# Change command prompt
source ~/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
# '\u' adds the name of the current user to the prompt
# '\$(__git_ps1)' adds git-related stuff
# '\W' adds the name of the current directory

# Make the prompt pretty
export PS1="$red\u$green\$(__git_ps1)$blue \W $ $reset"

# Setup the path
export PATH=~/bin/:$PATH
export PATH=$GOPATH/bin:$PATH
export GOPATH=$(go env GOPATH)
export PATH=/usr/local/go/bin:$PATH
export PATH="/Users/traci/anaconda/bin:$PATH"
export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"
export PATH="/Users/traci/Documents/development/build_tools/apache-maven-3.5.3/bin:$PATH"
export PATH=~/ngrok:/usr/local/bin:$PATH
