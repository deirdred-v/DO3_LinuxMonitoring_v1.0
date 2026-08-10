#!/bin/bash

str=`date +%s`

if [[ $# != 1 ]]
then
	echo "Invalid number of arguments (expected 1, input $#)"
	exit 1
fi

if [[ !(-d $1) ]]
then
	echo "it is not a directory"
	exit 1
fi

if [[ $1 != */ ]]
then
	echo "incorrect input"
	exit 1
fi

W1="./fw1.sh"
W2="./fw2.sh"

if [ -e $W1 ] && [ -e $W2 ]; then
	source ${W1}
	source ${W2}
	end=`date +%s`
	rt=$((end-str))
	echo "Script execution time (in seconds) = $rt"
else
	echo Not enough script files
fi