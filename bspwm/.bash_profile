#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# Auto Startx
[[ $(tty) == '/dev/tty1' ]] && startx
