#!/bin/bash

text="$1"
folder="$2"
count="$3"

if [ -z "$text" ] || [ -z "$folder" ] || [ -z "$count" ]; then
	echo "Usage: $0 \"text\" folder_name number"
	exit 1
fi

if [ -d "$folder" ]; then
	echo "Error: Folder already exists"
	exit 1
fi

if ! [[ "$count" =~ ^[2-8]$ ]]; then
	echo "Error: Number must be between 2 and 8"
	exit 1
fi

mkdir "$folder"

for ((i=1; i<=count;i++)); do
	echo "$text" > "$folder/file$i.txt"
done

