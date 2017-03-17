alias h='history'
alias j='jobs -l'
alias ..='cd ..'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'


alias sudo='sudo '      # allows use of sudo with aliases
alias em='emacs -nw'
alias emc='emacsclient -cnw'
alias emcw='emacsclient -c'

alias xopen='xdg-open'
alias xclip='xclip -selection c'
alias pylab='ipython --pylab'
alias xmatlab='matlab -nodesktop -nosplash'

alias gs='git status'
alias gd='git checkout'

alias replace-spaces="find -depth -name \"* *\" -execdir rename 's/ /_/g' \"{}\" \;"
