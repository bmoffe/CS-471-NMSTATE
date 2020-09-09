#!/bin/sh
# Brianna Moffett
# 09.09.2020
# CS471
# prog2.sh
#
# Short Circuit Evaluation Experiments
#
# PRE: none
# POST: none
# 
# INPUT: none (from user), 0's and 1's (from program)
# OUTPUT: True/False test results
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
