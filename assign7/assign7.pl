# Brianna Moffett
# 11.02.2020
# CS471
# assign7.pl
#
# INPUT: control-char.txt
# OUTPUT: no-control-perl.txt
#
# PRE: file shall exist within the same working directory as the program
# POST: n/a

#!/usr/bin/perl

use warnings;
use strict;

my $f = '/home/ugrad11/bmoffett/CS471/CS-471-NMSTATE/assign7/control-char.txt'; # file to read
my $nf = '/home/ugrad11/bmoffett/CS471/CS-471-NMSTATE/assign7/no-control-perl.txt'; # file to write
my $regex = '\\p{C}|$'; #regex
my $lineno = 1; # line no var
open (FH, '<', $f) or die $!; #open control text file
open (FH2,'>', $nf) or die $!; #open new file
while (<FH>){ #while !EOF, if we find string with special char, replace string
	my $content = $f;
	if ($lineno == 51){
		last;
	}
	if ($f =~ $regex){ #replacing string
		my $L1 = 'This is line ' . "$lineno ";
		my $L2 = $L1;
		my $L3 = $L1;
		print FH2 $L1;
		print FH2 $L2;
		print FH2 $L3;
		print FH2 "\n";
		$lineno = $lineno + 1;
	}
	else{
		print FH2 $content;
		$lineno = $lineno + 1;
	}
}
close(FH); # closing file handlers
close(FH2);
