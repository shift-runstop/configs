#!/bin/sh
# this is the ~/.xinitrc
# lines for system fonts and shell settings

xrdb -merge ~/.Xresources
# nm-applet &
# init keyring
eval $(/usr/bin/gnome-keyring-daemon --start --components=gpg,pkcs11,secrets,ssh)
# export keyring
export GNOME_KEYRING_CONTROL GNOME_KEYRING_PID GPG_AGENT_INFO SSH_AUTH_SOCK
exec dbus-launch i3

#		<-------> Qt theme 					<------->
export QT_QPA_PLATFORMTHEME = qt5ct

#		<------->	Console Kit management	<------->

#
#			CONSOLEKIT2 management
#if [ -d /etc/X11/xinit/xinitrc.d ]; then
#	for f in /etc/X11/xinit/xinitrc.d/*; do
#		[ -x "$f" ] && . "$f"
#	done
#	unset f
#fi

#$STARTUP ck-launch-session dbus-launch --sh-syntax --exit-with-x11 i3


#-----------------------------------------------------------------------#

#		<------->	dwm settings for bar taken from suckkless	<------->

#		<------->	Should try to remove if statements	<------->

#while true
#do
#	VOL=$(amixer get Master | tail -1 | sed 's/.*\[\([0-9]*%\)\].*/\1/')
#	LOCALTIME=$(date+%Z\=%Y-%m-%dT%H:%M)
#	IP=$(for i in 'ip r'; do echo $i; done | grep -A 1 src | tail -n1)
#	TEMP="$(($(cat /sys/class/thermal/thermal_zone0/temp) /1000))C"
#
#	if acpi -a | grep off-line > /dev/null
#		then
#			BAT="Bat. $(acpi -b | awk '{ print $4 " " $5}' | tr -d ',')"
#			xsetroot -name "$IP $BAT $TEMP $VOL $LOCALTIME"
#		else
#			xsetroot -name "$IP $TEMP $VOL $LOCALTIME"
#	fi
#	sleep 60s
#done &
