#!/usr/bin/env bash
 
 i3status --config ~/.config/i3status/config | while :
 do
 	read line
 	lang=$(setxkbmap -query | grep 'layout' | cut -d ' ' -f 2- | tr -d ' ')
 	dat="[{ \"full_text\": \"LANG: $lang\", \"color\":\"#009E00\" },"
 	echo "${line/[/$dat}" || exit 1
 done

