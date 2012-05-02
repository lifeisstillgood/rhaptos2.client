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
export PS1="\[\033[0;36m\][\u@\h:\W]$\[\033[0m\] "

####### Aliases #########
alias emacs='emacs --no-window-system'
alias ls='ls -aFG' 
alias ps='ps aux -dw'


eval `keychain -q --eval id_rsa mikado passtest`
