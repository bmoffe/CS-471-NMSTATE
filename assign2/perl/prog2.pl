#!/usr/bin/perl

use warnings;
sub evaluate {
	print("\tCondition has been evaluated.\n");
	return 1;
}
my $A = 1;
print("Beginning experiments...\n");
if ($A == 0 && evaluate == 1){ #false then true
	print("\tTrue\n");
}
else{
	print("\tFalse\n");
}
print("\n");
if ($A == 1 && evaluate == 0){ #true then false
	print("\tTrue\n");
}
else{
	print("\tFalse\n");
}
print("\n");
if ($A == 0 && evaluate == 0){ #false then false
	print("\tTrue\n");
}
else{
	print("\tFalse\n");
}
print("\n");
if ($A == 1 && evaluate == 1){ #true then true
	print("\tTrue\n");
}
else{
	print("\tFalse\n");
}
print("\n");
if ($A == 0 || evaluate == 1){ #false then true
	print("\tTrue\n");
}
else{
	print("\tFalse\n");
}
print("\n");
if ($A == 1 || evaluate == 0){ #true then false
	print("\tTrue\n");
}
else{
	print("\tFalse\n");
}
print("\n");
if ($A == 0 || evaluate == 0){ #false then false
	print("\tTrue\n");
}
else{
	print("\tFalse\n");
}
print("\n");
if ($A == 1 || evaluate == 1){ #true then true
	print("\tTrue\n");
}
else{
	print("\tFalse\n");
}
