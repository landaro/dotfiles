#
# ~/.bash_functions
#

#  Helper functions
goto() { [ -d "$1" ] && cd "$1" || cd "$(dirname "$1")"; }

# Copy/Move and follow to destination
cpf() { cp "$@" && goto "$_"; }
mvf() { mv "$@" && goto "$_"; }

# Create dir and enter
mcd () {
    mkdir -p $1
    cd $1
}
