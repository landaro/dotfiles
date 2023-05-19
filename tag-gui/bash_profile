#
# ~/.bash_profile
#

# Load initialisation for non-bash login shells
[[ -f ~/.profile ]] && . ~/.profile

# Load initialisation for bash non-login shells
[[ -f ~/.bashrc ]] && . ~/.bashrc

# Now vector to X Server session ...
if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
    exec startx
fi
