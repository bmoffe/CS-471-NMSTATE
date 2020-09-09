#!/bin/sh

echo "Beginning experiments..."

A=1

if [[ $A == 0 ]] && echo "visited" #false then true
then
	echo "True"
else
	echo "False"
fi
if [[ $A == 1 ]] && !~echo "visited" #true then false
then
	echo "True"
else
	echo "False"
fi
if [[ $A == 1 ]] && echo "visited" #true then true
then
	echo "True"
else
	echo "False"
fi
if [[ $A == 0 ]] && !~echo "visited" #false then false
then
	echo "True"
else
	echo "False"
fi
