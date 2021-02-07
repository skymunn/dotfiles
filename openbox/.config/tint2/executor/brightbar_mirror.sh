#!/bin/bash

bright="$(bash -c ~/.config/tint2/executor/brightness.sh)"
bright="$(printf '%.*f\n' 0 $bright)"

if [[ "$bright" -ge 1 && "$bright" -le 10 ]];
	then
		echo "┉┉┉┉┉┉┉┉┉━"

elif [[ "$bright" -ge 11 && "$bright" -le 20 ]];
	then
		echo "┉┉┉┉┉┉┉┉━━"

elif [[ "$bright" -ge 21 && "$bright" -le 30 ]];
	then
		echo "┉┉┉┉┉┉┉━━━"

elif [[ "$bright" -ge 31 && "$bright" -le 40 ]];
	then
		echo "┉┉┉┉┉┉━━━━"

elif [[ "$bright" -ge 41 && "$bright" -le 50 ]];
	then
		echo "┉┉┉┉┉━━━━━"

elif [[ "$bright" -ge 51 && "$bright" -le 60 ]];
	then
		echo "┉┉┉┉━━━━━━"

elif [[ "$bright" -ge 61 && "$bright" -le 70 ]];
	then
		echo "┉┉┉━━━━━━━"

elif [[ "$bright" -ge 71 && "$bright" -le 80 ]];
	then
		echo "┉┉━━━━━━━━"

elif [[ "$bright" -ge 81 && "$bright" -le 90 ]];
	then
		echo "┉━━━━━━━━━"

elif [[ "$bright" -ge 91 && "$bright" -le 100 ]];
	then
		echo "━━━━━━━━━━"
else
 echo "error, brightnessctl not found!"
fi
