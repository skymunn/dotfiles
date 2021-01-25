#!/bin/bash

volume="$(pamixer --get-volume)"

if [[ "$volume" -ge 0 &&  "$volume" -le 9 ]];
	then
		echo "┉┉┉┉┉┉┉┉┉┉"

elif [[ "$volume" -ge 10 && "$volume" -le 19 ]];
	then
		echo "━┉┉┉┉┉┉┉┉┉"

elif [[ "$volume" -ge 20 && "$volume" -le 29 ]];
	then
		echo "━━┉┉┉┉┉┉┉┉"

elif [[ "$volume" -ge 30 && "$volume" -le 39 ]];
	then
		echo "━━━┉┉┉┉┉┉┉"

elif [[ "$volume" -ge 40 && "$volume" -le 49 ]];
	then
		echo "━━━━┉┉┉┉┉┉"

elif [[ "$volume" -ge 50 && "$volume" -le 59 ]];
	then
		echo "━━━━━┉┉┉┉┉"

elif [[ "$volume" -ge 60 && "$volume" -le 69 ]];
	then
		echo "━━━━━━┉┉┉┉"

elif [[ "$volume" -ge 70 && "$volume" -le 79 ]];
	then
		echo "━━━━━━━┉┉┉"

elif [[ "$volume" -ge 80 && "$volume" -le 89 ]];
	then
		echo "━━━━━━━━┉┉"

elif [[ "$volume" -ge 90 && "$volume" -le 99 ]];
	then
		echo "━━━━━━━━━┉"

elif [[ "$volume" -eq 100 ]];
	then
		echo "━━━━━━━━━━"
else
 	echo "error, pamixer not found!"

fi