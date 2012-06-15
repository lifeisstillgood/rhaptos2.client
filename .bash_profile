ODI_JAVA_HOME='/usr/local/jdk1.6.0';export ODI_JAVA_HOME

JAVA_HOME=$ODI_JAVA_HOME; export JAVA_HOME

dirs=".:/sbin:/bin:/usr/local/sbin:/usr/local/bin:/usr/local/texlive/2011/bin/amd64-freebsd:/usr/sbin"
PATH=$PATH:$dirs;export PATH


export PYTHONPATH=/home/pbrian/com.mikadosoftware/clients/cnx:/home/pbrian

########### Terminal

export TERM=xterm-256color

export CLICOLOR=1
export LSCOLORS='gxfxcxdxbxegedabagacad'

#bit more explanation please
#export PS1="\[\033[0;36m\][\u@\h:\W]$\[\033[0m\] "

####### Aliases #########
alias emacs='emacsclient -t '
alias ls='ls -aFG' 
alias ps='ps aux -dw'
alias gitlog='git log --pretty=format:"%h%x09%an%x09%ad%x09%s" --date=short'

eval `keychain -q --eval id_rsa mikado 4E8EDF79`


############ git tools
##############
## Bash prompt
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

function proml {
  local        BLUE="\[\033[1;34m\]"
  local     DEFAULT="\[\e[0;0m\]"
  local         RED="\[\033[0;31m\]"
  local   LIGHT_RED="\[\033[1;31m\]"
  local       GREEN="\[\033[0;32m\]"
  local LIGHT_GREEN="\[\033[1;32m\]"
  local       WHITE="\[\033[1;37m\]"
  local  LIGHT_GRAY="\[\033[0;37m\]"
  case $TERM in
    xterm*)
    TITLEBAR='\[\033]0;\u@\h:\w\007\]'
    ;;
    *)
    TITLEBAR=""
    ;;
  esac

PS1="${TITLEBAR}\
$DEFAULT\u@\h:\W$BLUE\$(parse_git_branch)$DEFAULT\$ "
PS2='> '
PS4='+ '
}
proml
export PS1



# Red STDERR
# rse <command string>
function rse()
{
    # We need to wrap each phrase of the command in quotes to preserve arguments that contain whitespace
    # Execute the command, swap STDOUT and STDERR, colour STDOUT, swap back
    ((eval $(for phrase in "$@"; do echo -n "'$phrase' "; done)) 3>&1 1>&2 2>&3 | sed -e "s/^\(.*\)$/$(echo -en \\033)[31;1m\1$(echo -en \\033)[0m/") 3>&1 1>&2 2>&3
}

