#!/bin/bash

if [[ $1 =~ ^[+-]?[0-9]+([.][0-9]+)?$ ]]; then
	echo Error: text only
else
	echo $1
fi