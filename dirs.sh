#!/bin/bash

if [ -d "$1" ]; then
	ls -la "$1"
else
	echo "Error: Folder does not exist"
fi
