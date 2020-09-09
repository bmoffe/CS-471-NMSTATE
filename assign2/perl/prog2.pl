#!/usr/bin/perl
# Brianna Moffett
# 09.08.2020
# prog2.pl
# CS471
#
# Short Circuit Evaluation Experiments
#
# PRE: none
# POST: none
#
# INPUT: none (from user), 0's and 1's (from program)
# OUTPUT: True/False evaluations
use warnings;
sub evaluate {
	print("\tCondition has been evaluated.\n");
	return 1;
}
my $A = 1; # setting A variable to true (1)
print("Beginning experiments...\n");
if ($A == 0 && evaluate == 1){ # false then true
	print("\tTrue\n");
}
else{
	print("\tFalse\n");
}
print("\n");
if ($A == 1 && evaluate == 0){ # true then false
	print("\tTrue\n");
}
else{
	print("\tFalse\n");
}
print("\n");
if ($A == 0 && evaluate == 0){ # false then false
	print("\tTrue\n");
}
else{
	print("\tFalse\n");
}
print("\n");
if ($A == 1 && evaluate == 1){ # true then true
	print("\tTrue\n");
}
else{
	print("\tFalse\n");
}
print("\n");
