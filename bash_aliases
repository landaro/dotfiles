#
# ~/.bash_aliases
#

# Better file listing

alias ls='ls -h --color=auto --group-directories-first'
alias ll='ls -lh --color=auto --group-directories-first'
alias la='ls -lAh --color=auto --group-directories-first'
alias unsafe_ssh='ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null'

# docker tricks
alias dockviz='docker run -it --rm -v /var/run/docker.sock:/var/run/docker.sock nate/dockviz images --tree'

# task, but with alternate configuration
alias ttask='TASKRC=~/.config/task/taskrc-test task'
