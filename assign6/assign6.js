//Brianna Moffett
//CS471
//assign6.js
//10.26.2020
//
//INPUT: n/a
//OUTPUT: value of x
//
//PRE: n/a
//POST: n/a
function sub1(){ //sub1
	var x; //x declared
	function sub2(){ //sub2
		console.info(x); //print x
	} //sub2
	function sub3(){ //sub3
		var x; //x declared
		x = 3; //x bound with 3
		sub4(sub2); //call sub4, pass sub2
	} //sub3
	function sub4(subx){ //sub4
		var x; //x declared
		x = 4; //x bound with 4
		subx(); //call subx
	} //sub4
	x = 1; //x bound with 1
	sub3(); //sub3 called
} //sub1
sub1(); //call sub1 to run program
