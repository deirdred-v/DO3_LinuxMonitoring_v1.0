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
function clrc {
	case $1 in
		1) var='white';;
		2) var='red';;
		3) var='green';;
		4) var='blue';;
		5) var='purple';;
		6) var='black';;
		*) var='default';;
	esac
	echo $var
}

ncf='\033[0;39m'
ncb='\033[49m'

f1="$(cat file.conf | grep 1_f | awk -F '(=)+' '{print $2}')"
if [[ $f1 =~ ^[1-9]+$ ]]; then
	f1c=$(clrc $f1)
	fr=$(clrf $f1)
else
	f1="default"
	f1c="white"
	fr='\033[1;97m'
fi
b1="$(cat file.conf | grep 1_b | awk -F '(=)+' '{print $2}')"
if [[ $b1 =~ ^[1-9]+$ ]]; then
	b1c=$(clrc $b1)
	se=$(clrb $b1)
else
	b1="default"
	b1c="black"
	se='\033[40m'
fi
f2="$(cat file.conf | grep 2_f | awk -F '(=)+' '{print $2}')"
if [[ $f2 =~ ^[1-9]+$ ]]; then
	f2c=$(clrc $f2)
	th=$(clrf $f2)
else
	f2="default"
	f2c="blue"
	th='\033[1;94m'
fi
b2="$(cat file.conf | grep 2_b | awk -F '(=)+' '{print $2}')"
if [[ $b2 =~ ^[1-9]+$ ]]; then
	b2c=$(clrc $b2)
	fo=$(clrb $b2)
else
	b2="default"
	b2c="red"
	fo='\033[101m'
fi
		
fr=$(clrf $f1)
se=$(clrb $b1)
th=$(clrf $f2)
fo=$(clrb $b2)