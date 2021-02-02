#!/bin/sh

# IMG:	App	Command

cat <<EOF | xmenu | sh &
Terminal (konsole)		konsole
Terminal (urxvt + xrdb)		xrdb ~/.Xresources && urxvt

Set Theme
	Base		~/.config/openbox/visual-mode/set-base
	ElaiNord	~/.config/openbox/visual-mode/set-elainord
	Restart		~/.config/openbox/visual-mode/reload

Openbox
	Reconfigure			openbox --reconfigure
	ObConf				obconf
	Configure XMenu			konsole -e nano ~/.config/xmenu/launch.sh
	Configure Tint2			tint2conf
	Configure urxvt			konsole -e nano ~/.Xresources
	Configure Default Theme		konsole -e nano ~/.config/openbox/visual-mode/default
Animation
	Turn On			picom &
	Turn Off		killall picom

Power Menu			~/.config/rofi/powermenu/powermenu.sh
EOF
