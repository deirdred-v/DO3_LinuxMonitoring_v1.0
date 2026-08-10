#!/bin/bash

V1="./var1.sh"
V2="./var2.sh"
E="./echo.sh"
S="./save.sh"

if [ -e $V1 ] && [ -e $V2 ] && [ -e $E ] && [ -e $S ]; then
	source ${V1}
	source ${V2}
	source ${E}
	source ${S}
else
	echo Not enough script files
fi