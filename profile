#
# ~/.profile
#

# Restrictive umask
umask 077

# language settings
export LANG="en_GB.utf8"

# Some default applications
export EDITOR="emacs"
export TERM="rxvt-unicode"
if [ -n "$DISPLAY" ]; then
    BROWSER=firefox
fi

# Enable private bin directory
export PATH=$PATH:"/home/jonas/bin"

# Enable cargo (rust) bin directory
export PATH=$PATH:"/home/jonas/.cargo/bin"


# utility functions
function copypath(){
    realpath "$1" | xclip -selection clipboard
}
