#!/bin/bash

C="./clr.sh"
V1="./var1.sh"
V2="./var2.sh"
E="./echo.sh"

if [ -e $V1 ] && [ -e $V2 ] && [ -e $E ] && [ -e $C ]; then
	if [[ $# < 4 ]]; then
		echo Error: not enogh parametrs
	else
		if [[ $1 = $2 ]] || [[ $3 = $4 ]]; then
			echo There\'s same color in one colomn. Try another combination
		else
			source ${C}
			source ${V1}
			source ${V2}
			source ${E}
		fi
	fi
else
	echo Not enough script files
fi