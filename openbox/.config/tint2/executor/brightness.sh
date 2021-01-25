#!/bin/bash

awk "BEGIN {cur_bri=$(brightnessctl g); max_bri=$(brightnessctl m); percent=cur_bri/max_bri*100; print percent}"
