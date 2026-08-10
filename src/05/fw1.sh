#!/bin/bash

total_folders="$(find $1 -type d | wc -l)"
echo "Total number of folders (including all nested ones) = ${total_folders}"
big_folders="$(du -hx $1 | sort -rh | head -6 | tail -n 5| awk '{print $2", "$1}' | grep -n $1)"
echo "TOP 5 folders of maximum size arranged in descending order (path and size): $big_folders"
total_f="$(find $1 -type f | wc -l)"
echo "Total number of files = $total_f"
echo "Number of:  
Configuration files (with the .conf extension) = $(find $1 -name "*.conf" | wc -l)
Text files = $(find $1 -name "*.txt" | wc -l)
Executable files = $(find $1 -type f -perm /a=x | wc -l)
Log files (with the extension .log) = $(find $1 -name "*.log" | wc -l)
Archive files = $(find /etc/ -name "*.zip" -name "*.tar" -name "*.rar"|wc -l)
Symbolic links = $(find $1 -type l |wc -l)"