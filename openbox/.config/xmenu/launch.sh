#!/bin/sh

# IMG:	App	Command

cat <<EOF | xmenu | sh &
Terminal (konsole)		konsole
Terminal (urxvt + xrdb)		xrdb ~/.Xresources && urxvt

Set Theme
	Base		~/.config/openbox/visual-mode/set-base
	Restart		~/.config/openbox/visual-mode/reload

Openbox
	Reconfigure		openbox --reconfigure
	ObConf			obconf
	Configure XMenu		konsole -e nano ~/.config/xmenu/launch.sh
	Configure Tint2		tint2conf
	Configure urxvt		konsole -e nano ~/.Xresources

Shutdown		poweroff
Reboot			reboot
Logout			pkill -u munn
EOF
