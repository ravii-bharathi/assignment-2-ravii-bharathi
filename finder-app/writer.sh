#!/bin/bash

writefile=$1
writestr=$2

#check if arguments are provided
if [ -z "$writefile" ] || [ -z "$writestr" ];then
	echo "Error: both file path and string to write must be specified."
fi

#create parent directories if they don't exist
dir=$(dirname "$writefile")
mkdir -p "$dir"

#write string to file, overwrite if exists
echo "$writestr" > "$writefile" || { echo "Error: could not create file $writefile"; exit 1; }
