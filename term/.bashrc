# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

if [ -f ~/.bash_git ]; then
    . ~/.bash_git
fi

alias emcsd='emacs --daemon'
alias emc='emacsclient'
alias ne='emacs -nw'
alias l='ll'
alias la='l -a'
alias lh='l -h'
alias clean='rm -f *~ \#*\#'
alias rclean='find . -name "*~" -o -name "\#*\#" | xargs rm -f {} \;'
alias blih='blih -u kevin1.pichot@epitech.eu'
export PAGER=less

export PS1='\u@\h:[\W] $(__git_ps1 "{%s}")$>'

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
### C Graphical Programming Environement Variable
export LIBRARY_PATH=$LIBRARY_PATH:/home/siqual/.c_graph_prog/lib
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/siqual/.c_graph_prog/lib
export CPATH=$CPATH:/home/siqual/.c_graph_prog/include
export CGP_INSTALL_DIR=/home/siqual/.c_graph_prog
