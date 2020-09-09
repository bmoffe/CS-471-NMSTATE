--Brianna Moffett
--09.07.2020
--prog2.adb
--CS471
--
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
		Put_Line("Function visited.");
		return 1;
	end evaluate; --end evaluate
begin
	A := 1; --Set A to true
--Start of var then call
	--and testing
	Put_Line("Testing 'and' + 'and then' (var then call)");
	Put_Line("Testing with and (false and true)");
	if A=0 and evaluate=1 then
		Put_Line("True");
	else 
		Put_Line("False");
	end if;
	Put_Line("");
	Put_Line("Testing with and then (true and false)");
	if A=1 and evaluate=0 then
		Put_Line("True");
	else
		Put_Line("False");
	end if;
	Put_Line("");
	Put_Line("Testing with and (false and false)");
	if A=0 and evaluate=0 then
		Put_Line("True");
	else
		Put_Line("False");
	end if;
	Put_Line("");
	Put_Line("Testing with and (true and true)");
	if A=1 and evaluate=1 then
		Put_Line("True");
	else
		Put_Line("False");
	end if;
	Put_Line("");
	--and then testing
	Put_Line("Testing with and then (false and then true)");
	if A=0 and then evaluate=1 then
		Put_Line("True");
	else
		Put_Line("False");
	end if;
	Put_Line("");
	Put_Line("Testing with and then (true and then false)");
	if A=1 and then evaluate=0 then
		Put_Line("True");
	else 
		Put_Line("False");
	end if;
	Put_Line("");
	Put_Line("Testing with and then (true and then true)");
	if A=1 and then evaluate=1 then
		Put_Line("True");
	else
		Put_Line("False");
	end if;
	Put_Line("");
	Put_Line("Testing with and then (false and then false)");
	if A=0 and then evaluate=0 then
		Put_Line("True");
	else
		Put_Line("False");
	end if;
--Start of call then var
	--and testing
	Put_Line("Testing 'and' + 'and then' (call then var)");
	Put_Line("Testing and (false and true)");
	if evaluate=0 and A=1 then
		Put_Line("True");
	else
		Put_Line("False");
	end if;
	Put_Line("Testing and (true and false)");
	if evaluate=1 and A=0 then
		Put_Line("True");
	else
		Put_Line("False");
	end if;
 	Put_Line("Testing and (true and true)");
	if evaluate=0 and A=0 then
		Put_Line("True");
	else 
		Put_Line("False");
	end if;
	Put_Line("Testing and (true and true)");
	if evaluate=1 and A=1 then
		Put_Line("True");
	else
		Put_Line("False");
	end if;
	--and then testing
	Put_Line("Testing with and then (false and then true)");
	if evaluate=0 and then A=1 then --false then true
		Put_Line("True");
	else
		Put_Line("False");
	end if;--end first test
	Put_Line("");
	Put_Line("Testing with and then (true and then false)");
	if evaluate=1 and then A=0 then --true then false
		Put_Line("True");
	else
		Put_Line("False");
	end if;--end second test
	Put_Line("");
	Put_Line("Testing with and then (true and then true)");
	if evaluate=1 and then A=1 then --true then true
		Put_Line("True");
	else 
		Put_Line("False");
	end if;--end third test
	Put_Line("");
	Put_Line("Testing with and then (false and then false)");
	if evaluate=0 and then A=0 then --false then false
		Put_Line("True");
	else 
		Put_Line("False");
	end if;--end fourth test
end prog2;
