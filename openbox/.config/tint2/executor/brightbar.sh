#!/bin/bash

bright="$(brightnessctl g)"

if [[ "$bright" -ge 230 && "$bright" -le 478 ]];
	then
		echo "━┉┉┉┉┉┉┉┉┉"

elif [[ "$bright" -ge 479 && "$bright" -le 975 ]];
	then
		echo "━━┉┉┉┉┉┉┉┉"

elif [[ "$bright" -ge 976 && "$bright" -le 1454 ]];
	then
		echo "━━━┉┉┉┉┉┉┉"

elif [[ "$bright" -ge 1455 && "$bright" -le 1952 ]];
	then
		echo "━━━━┉┉┉┉┉┉"

elif [[ "$bright" -ge 1953 && "$bright" -le 2430 ]];
	then
		echo "━━━━━┉┉┉┉┉"

elif [[ "$bright" -ge 2431 && "$bright" -le 2927 ]];
	then
		echo "━━━━━━┉┉┉┉"

elif [[ "$bright" -ge 2928 && "$bright" -le 3407 ]];
	then
		echo "━━━━━━━┉┉┉"

elif [[ "$bright" -ge 3408 && "$bright" -le 3905 ]];
	then
		echo "━━━━━━━━┉┉"

elif [[ "$bright" -ge 3906 && "$bright" -le 4384 ]];
	then
		echo "━━━━━━━━━┉"

elif [[ "$bright" -eq 4882 ]];
	then
		echo "━━━━━━━━━━"
else
 echo "error, brightnessctl not found!"

fi
