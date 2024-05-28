#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then







    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

### for basic X server testing
#twm &
#xclock -geometry 50x50-1+1 &
#xterm -geometry 80x50+494+51 &
#xterm -geometry 80x20+494-0 &
#exec xterm -geometry 80x66+0+0 -name login

### Custom i3 Environment

# background color (Currently: lightest grey of Arc-Dark)
xsetroot -solid "#7c818c"

# Other stuff, todo

# Gnome keyring (extend components later, comma-separated)
# Disabled components: pkcs11,ssh,gpg?
eval $(/usr/bin/gnome-keyring-daemon --start --components=secrets)
# this one is probably only needed once we enable ssh support ..
#export SSH_AUTH_SOCK

# start an ssh agent
eval $(ssh-agent)

# enable automounting of removable media from userspace
udiskie --tray &

# Finally, launch WM
exec i3 >> ~/.i3log 2>&1
