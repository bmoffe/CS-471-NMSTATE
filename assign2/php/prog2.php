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
	echo "Testing '&&' (call then var)\n";
	if (evaluate() == 0 && $A == 1){//false then true
		echo "\tTrue\n";
	}
	else{
		echo "\tFalse\n";
	}
	echo "";
	if (evaluate() == 1 && $A == 0){//true then false
		echo "\tTrue\n";
	}
	else{
		echo "\tFalse\n";
	}
	echo "";
	if (evaluate() == 0 && $A == 0){//false then false
		echo "\tTrue\n";
	}
	else{
		echo "\tFalse\n";
	}
	echo "";
	if (evaluate() == 1 && $A == 1){//true then true
		echo "\tTrue\n";
	}
	else{
		echo "\tFalse\n";
	}
	echo "";
	echo "Testing '&&' (var then call)\n";
	if($A == 0 && evaluate() == 1){ //false then true
		echo "\tTrue\n";
	}
	else{
		echo "\tFalse\n";
	}
	echo "";
	if ($A == 1 && evaluate() == 0){//true then false
		echo "\tTrue\n";
	}
	else{
		echo "\tFalse\n";
	}
	echo "";
	if ($A == 1 && evaluate() == 1){//true then true
		echo "\tTrue\n";
	}
	else{
		echo "\tFalse\n";
	}
	echo "";
	if ($A == 0 && evaluate() == 0){//false then false
		echo "\tTrue\n";
	}
	else{
		echo "\tFalse\n";
	}
	echo "";
        echo "Testing 'and' (call then var)\n";
	if(evaluate() == 0 and $A == 1){//false then true
		echo "\tTrue\n";
	}
	else{
		echo "\tFalse\n";
	}
	echo "";
	if (evaluate() == 1 and $A == 0){//true then false
		echo "\tTrue\n";
	}
	else{
		echo "\tFalse\n";
	}
	echo "";
	if (evaluate() == 1 and $A == 1){//true then true
		echo "\tTrue\n";
	}
	else{
		echo "\tFalse\n";
	}
	if (evaluate() == 0 and $A == 0){ //false then false
		echo "\tTrue\n";
	}
	else{
		echo "\tFalse\n";
	}
	echo "";
	echo "Testing 'and' (var then call)\n";
	if ($A == 0 and evaluate() == 1){//false then true
		echo "\tTrue\n";
	}
	else{
		echo "\tFalse\n";
	}
	echo "";
	if ($A == 1 and evaluate() == 0){//true then false
		echo "\tTrue\n";
	}
	else{
		echo "\tFalse\n";
	}
	echo "";
	if ($A == 1 and evaluate() == 1){//true then true
		echo "\tTrue\n";
	}
	else{
		echo "\tFalse\n";
	}
	echo "";
	if ($A == 0 and evaluate() == 0){//false then false
		echo "\tTrue\n";
	}
	else{
		echo "\tFalse\n";
	}
	echo "";
?>
