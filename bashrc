#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Enable additional bash completions from package "bash-completion"
# TODO

# Enable git prompt
source /usr/share/git/completion/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=true

# Configure Prompt
PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '

# Adjust bash history
export HISTCONTROL=ignoredups
shopt -s histappend

# Layouting
shopt -s checkwinsize

# Password Store configs
export PASSWORD_STORE_X_SELECTION=primary
export PASSWORD_STORE_DIR=/home/jonas/.password-store

# restic backup default settings for home dir
export RESTIC_REPOSITORY='/run/media/jonas/BACKUP/restic/orchid-home'
export RESTIC_PASSWORD_COMMAND='/home/jonas/bin/get-restic-password'
export RESTIC_COMPRESSION='auto' # off|auto|max
export RESTIC_CACHE_DIR=~/.cache/restic

# MAC dev env vars
export MAC_KTM_WORKTREE='/home/jonas/workspace/mac/ktm'

# Enable command correction utility
eval "$(thefuck --alias)"
eval "$(thefuck --alias ff)"

# setup pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Load aliases
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

# Load bash functions
if [ -f ~/.bash_functions ]; then
    source ~/.bash_functions
fi

# Enable direnv (NOTE: this needs to be late in the prompt config order!!)
eval "$(direnv hook bash)"

complete -C /usr/bin/terraform terraform
