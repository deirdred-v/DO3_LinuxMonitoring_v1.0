#!/bin/bash

top_f="$(find $1 -xdev -type f -size -100G -print | xargs ls -lh | sort -k5,5 -h -r | head -10 | awk -F '[^[:alpha:]]' '{ print $0,$NF }' | awk '{print $9", "$5", "$10}' | grep -n $1)"
echo "TOP 10 files of maximum size arranged in descending order (path, size and type): 
$top_f"
echo "TOP 10 executable files of the maximum size arranged in descending order (path, size and MD5 hash of file):"
j="$(find $1 -type f -perm /a=x -size -100G | xargs ls -lh | sort -k5,5 -h -r | head -10 | wc -l)"
for ((i=1; i <= 10 && i <= j; i++))
do
	f="$(find $1 -type f -perm /a=x -size -100G | xargs ls -lh | sort -k5,5 -h -r | head -$i | tail -n 1 | awk '{print $9}' | xargs md5sum | awk '{print $1}')"
	echo "$i - $(find $1 -type f -perm /a=x -size -100G | xargs ls -lh | sort -k5,5 -h -r | head -$i | tail -n 1 | awk '{print $9", "$5", "}')$f" 
done