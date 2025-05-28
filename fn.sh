#!/bin/bash

add_three(){
	echo $(( $1+3 ))
}

if [ -z "$1" ]; then
	echo "Please provide a number"
else
	add_three "$1"
fi
