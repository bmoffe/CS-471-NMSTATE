#!/bin/sh

echo "Beginning experiments..."

A=1

if [[ $A == 0 ]] && echo "Condition has been evaluated" #false then true
then
	echo "True"
else
	echo "False"
fi
if [[ $A == 1 ]] && echo "Condition has been evaluated" #true then true
then
	echo "True"
else
	echo "False"
fi
