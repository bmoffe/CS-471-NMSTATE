#!/bin/sh

echo "Beginning experiments...\n"

A = 1
if [$A == 0 -a $?  == 1]
then
	echo "True"
else
	echo "False"
fi
