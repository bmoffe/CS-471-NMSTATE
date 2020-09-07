--Brianna Moffett
--09.07.2020
--prog2.adb
--Short Circuit Evaluation Experiments
--
--PRE: none
--POST: outputs print statements based on true/false values
--
--Input: none (from user), 0's and 1's (from program)
--Output: True/False short circuit evaluation results
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure prog2 is
	A: Integer;
	function evaluate return Integer is --function to see if boolean is fully evaluated
	begin
		Put_Line("Condition has been evaluated.");
		return 1;
	end evaluate; --end evaluate
begin
	A := 1; --Set A to true
	Put_Line("Testing with and then (false and then true)");
	if A=0 and then evaluate=1 then --false then true
		Put_Line("True");
	else
		Put_Line("False");
	end if;--end first test
	Put_Line("");
	Put_Line("Testing with and then (true and then false)");
	if A=1 and then evaluate=0 then --true then false
		Put_Line("True");
	else
		Put_Line("False");
	end if;--end second test
	Put_Line("");
	Put_Line("Testing with and then (true and then true)");
	if A=1 and then evaluate=1 then --true then true
		Put_Line("True");
	else 
		Put_Line("False");
	end if;--end third test
	Put_Line("");
	Put_Line("Testing with and then (false and then false)");
	if A=0 and then evaluate=0 then --false then false
		Put_Line("True");
	else 
		Put_Line("False");
	end if;--end fourth test
	Put_Line("");
	Put_Line("Testing with or else (false or else true)");
	if A=0 or else evaluate=1 then --false then true
		Put_Line("True");
	else 
		Put_Line("False");
	end if;--end fifth test
	Put_Line("");
	Put_Line("Testing with or else (true or else false)");
	if A=1 or else evaluate=0 then --true then false
		Put_Line("True");
	else
		Put_Line("False");
	end if;--end sixth test
	Put_Line("");
	Put_Line("Testing with or else (true or else true)");
	if A=1 or else evaluate=1 then --true then true
		Put_Line("True");
	else 
		Put_Line("False");
	end if;--end seventh test
	Put_Line("");
	Put_Line("Testing with or else (false or else false)");
	if A=0 or else evaluate=0 then --false then false
		Put_Line("True");
	else
		Put_Line("False");
	end if;--end eigth test
	Put_Line("");
end prog2;
