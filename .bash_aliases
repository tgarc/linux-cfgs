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

alias xrandr-0='xrandr --output LVDS1 --auto --output HDMI2 --off'
alias xrandr-1='xrandr --output LVDS1 --off --output HDMI2 --auto'
alias xrandr-auto='xrandr --auto'

alias xopen='xdg-open'
alias xclip='xclip -selection c'
alias winmount='sudo mount /dev/sda2 /home/win8-tdos'
alias uwinmount='sudo umount /home/win8-tdos'
alias pylab='ipython --pylab'
alias matlab='matlab -nodesktop -nosplash'

alias replace-spaces="find -depth -name \"* *\" -execdir rename 's/ /_/g' \"{}\" \;"
