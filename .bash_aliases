alias cp='cp -i'
alias mv='mv -i'
# -> Prevents accidentally clobbering files.
alias mkdir='mkdir -p'

alias h='history'
alias j='jobs -l'
alias which='type -a'
alias ..='cd ..'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'


# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

alias sudo='sudo '      # allows use of sudo with aliases
alias em='emacs -nw'
alias emc='emacsclient -cnw'
alias emcw='emacsclient -c'

alias xopen='xdg-open'
alias xclip='xclip -selection c'
alias pylab='ipython --pylab'
alias matlab='matlab -nodesktop -nosplash'

alias replace-spaces="find -depth -name \"* *\" -execdir rename 's/ /_/g' \"{}\" \;"
