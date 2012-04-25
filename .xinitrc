SSH_ASKPASS=/usr/local/bin/x11-ssh-askpass ;export SSH_ASKPASS
eval $( ssh-agent -s )
ssh-add &
xfce4-session
eval $( ssh-agent -k )


