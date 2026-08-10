#!/bin/bash

while true; do
	read -s -n 1 input
	case $input in
		y|Y) fn="$(date +%d_%m_%y_%H_%M_%S)"
		cp tmp.status ${fn}.status
		rm tmp.status
		echo File was saved
		break;;
		*) rm tmp.status
		break;;
	esac
done