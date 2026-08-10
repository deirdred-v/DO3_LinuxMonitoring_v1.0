#!/bin/bash

function clrf {
	case $1 in
		1) var='\033[1;97m';;
		2) var='\033[1;91m';;
		3) var='\033[1;92m';;
		4) var='\033[1;94m';;
		5) var='\033[0;35m';;
		6) var='\033[0;30m';;
		*) var='\033[0;39m';;
	esac
	echo $var
}
function clrb {
	case $1 in
		1) var='\033[107m';;
		2) var='\033[101m';;
		3) var='\033[102m';;
		4) var='\033[104m';;
		5) var='\033[45m';;
		6) var='\033[40m';;
		*) var='\033[49m';;
	esac
	echo $var
}
		
ncf='\033[0;39m'
ncb='\033[49m'
f1=$1
b1=$2
f2=$3
b2=$4
		
fr=$(clrf $f1)
se=$(clrb $b1)
th=$(clrf $f2)
fo=$(clrb $b2)