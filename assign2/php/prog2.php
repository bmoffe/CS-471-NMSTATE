<?php
//Brianna Moffett
//09.07.2020
//prog2.php
//CS471
//
//Short Circuit Evaluation Experiments
//
//PRE: none
//POST: none
//
//Input: none (from user), 0's and 1's (from program)
//Output: True/False results from experiments
function evaluate(){
	echo "\tCondition has been evaluated.\n";
	return 1;
}
	echo "Beginning tests...\n";
	$A = 1;
	if($A == 0 && evaluate()){ //false then true
		echo "\tTrue\n";
	}
	else{
		echo "\tFalse\n";
	}
	echo "";
	if ($A == 1 && !evaluate()){//true then false
		echo "\tTrue\n";
	}
	else{
		echo "\tFalse\n";
	}
	echo "";
	if ($A == 1 && evaluate()){//true then true
		echo "\tTrue\n";
	}
	else{
		echo "\tFalse\n";
	}
	echo "";
	if ($A == 0 && !evaluate()){//false then false
		echo "\tTrue\n";
	}
	else{
		echo "\tFalse\n";
	}
	echo "";
	if ($A == 0 || evaluate()){//false then true
		echo "\tTrue\n";
	}
	else{
		echo "\tFalse\n";
	}
	echo "";
	if ($A == 1 || !evaluate()){//true then false
		echo "\tTrue\n";
	}
	else{
		echo "\tFalse\n";
	}
	echo "";
	if ($A == 1 || evaluate()){//true then true
		echo "\tTrue\n";
	}
	else{
		echo "\tFalse\n";
	}
	echo "";
	if ($A == 0 || !evaluate()){//false then false
		echo "\tTrue\n";
	}
	else{
		echo "\tFalse\n";
	}
	echo "";
?>
