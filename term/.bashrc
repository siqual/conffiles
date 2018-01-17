# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

if [ -f ~/.bash_git ]; then
    . ~/.bash_git
fi

alias ne='emacs'
alias l='ll'
alias la='l -a'
alias lh='l -h'
alias clean='rm -f *~ \#*\#'
alias rclean='find . -name "*~" -o -name "\#*\#" -exec rm -f {} \;'
export PAGER=less

export PS1='\u@\h:[\W] $(__git_ps1 "{%s}")$>'

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
### C Graphical Programming Environement Variable
