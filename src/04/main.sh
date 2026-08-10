#!/bin/bash

C="./clr.sh"
V1="./var1.sh"
V2="./var2.sh"
E="./echo.sh"

if [ -e $V1 ] && [ -e $V2 ] && [ -e $E ] && [ -e $C ]; then
	source ${C}
	source ${V1}
	source ${V2}
	source ${E}
else
	echo Not enough script files
fi