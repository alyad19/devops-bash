#!/bin/bash

if [ -z "$1" ]; then
	echo "Please provide a number"
else
	if [ $(( $1 % 2 )) -eq 0 ]; then
		echo "even"
	else
		echo "odd"
	fi
fi
