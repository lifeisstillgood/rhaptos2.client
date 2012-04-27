ODI_JAVA_HOME='/usr/local/jdk1.6.0';export ODI_JAVA_HOME

JAVA_HOME=$ODI_JAVA_HOME; export JAVA_HOME

dirs=".:/sbin:/bin:/usr/local/sbin:/usr/local/bin:/usr/local/texlive/2011/bin/amd64-freebsd:/usr/sbin"
PATH=$PATH:$dirs;export PATH


PYTHONPATH=/home/pbrian/com.mikadosoftware/experiements/uwsgi:/home/pbrian/:/home/pbrian/frozone; export PYTHONPATH

CLICOLOR=1; export CLICOLOR
LSCOLORS='gxfxcxdxbxegedabagacad'; export LSCOLORS

PS1="\[\033[0;36m\][\$(date +%H:%M)][\u@\h:\W]$\[\033[0m\] ";export PS1

alias emacs='emacs --no-window-system'
alias ls='ls -aFG' 

eval `keychain -q --eval id_rsa mikado passtest`
