#!/bin/bash

muted=$(pamixer --get-mute)

if [[ $muted = true ]]; then
	echo 

else
	echo 
fi