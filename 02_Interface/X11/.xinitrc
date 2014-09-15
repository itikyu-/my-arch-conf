export GTK_IM_MODULE=uim
export QT_IM_MODULE=uim
uim-xim &
export XMODIFIERS=@im=uim
uim-toolbar-gtk3-systray &

/usr/bin/start-pulseaudio-x11

# Start a D-Bus session
# Source the below file only if you do not already use the default xinitrc skeleton. 
# Otherwise you will end up with multiple dbus sessions.
source /etc/X11/xinit/xinitrc.d/30-dbus
# Start GNOME Keyring
eval $(/usr/bin/gnome-keyring-daemon --start --components=gpg,pkcs11,secrets,ssh)
# You probably need to do this too:
export GNOME_KEYRING_CONTROL GNOME_KEYRING_PID GPG_AGENT_INFO SSH_AUTH_SOCK

exec awesome
#exec startxfce4
