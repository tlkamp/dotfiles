set -o vi
HISTCONTROL=ignorespace

# source all my helper functions
if [ -d ~/.functions ]; then
  for i in ~/.functions/*; do source $i; done
fi

# Aliases
alias ll="ls -l"
alias ls="ls -lhpG"
alias jq="jq -CS"
alias check-todo="grep -ir --exclude-dir={.git,.idea,.vscode,node_modules} 'todo' ."
alias celar="clear"
alias config='/usr/bin/git --git-dir=/Users/traci/.cfg/ --work-tree=/Users/traci'

sourcefile .secret
sourcefile ~/git-completion.bash
sourcefile ~/git-prompt.sh

# colors!
green="\[\033[0;32m\]"
blue="\[\033[0;34m\]"
red="\[\033[38;5;203m\]"
reset="\[\033[0m\]"

# Change command prompt
export GIT_PS1_SHOWDIRTYSTATE=1

# Make the prompt pretty
export PS1="$red\u$green\$(__git_ps1)$blue \W $ $reset"

# Setup language tools
export GOPATH=$(go env GOPATH)
export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"

# Setup the path
addtopath ~/bin
addtopath $GOPATH/bin
addtopath /usr/local/go/bin
addtopath ~/anaconda/bin
addtopath ~/Documents/dev/build_tools/apache-maven-3.5.3/bin
