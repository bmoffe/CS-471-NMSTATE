//Brianna Moffett
//10.06.2020
//CS471
//grade_distribution.java
//
//INPUT: grades 0-100
//OUTPUT: grade ranges and the count of how many grades are in that range
//
//PRE: condition must be positive and between 0-100
//POST: list will show ranges and count of grades from 0-100
import java.util.Scanner;
public class grade_distribution{
	public static void main(String [] args) throws Exception{
		int [] freq = new int[10]; //frequency of grades
		int New_Grade = 0; //grade entered by user
		int Index = 0; //index of freq
		int Limit_1; //lower limit
		int Limit_2; //upper limit
		System.out.println("Enter new grade.");
		Scanner scnr = new Scanner(System.in); //reading in input grade
		while (Index < 10){ //while index < 10, take in new grades
			try{
				New_Grade = scnr.nextInt(); //taking in new input
				Index = (New_Grade/10); //setting the index
				if (New_Grade < 0){ //if input is negative, break program
					throw new Exception();
				}//end if
			}//end try
			catch(IllegalArgumentException ex2){//catch negative value and throw exception
				System.out.println("ERROR: INPUT MUST BE POSTITIVE.");
			}//end catch
			try{ //updating freq array with new
			        freq[Index] = freq[Index] + 1;	
			}//end try
			catch(IndexOutOfBoundsException e){ //catching index out of bounds exception
				if (New_Grade == 100){
					freq[9] = freq[9] + 1;
				}//end if
				else{
					System.out.println("ERROR: INPUT IS OUT OF RANGE.");
				}//end else
			}//end catch
		}//end while
		System.out.println("LIMITS	FREQUENCY");
		for(Index = 0; Index <= 9; Index++){ //printing limits and frequencies
			Limit_1 = 10 * Index; //computing lower limit
			Limit_2 = Limit_1 + 9; //computing higher limit
			if (Index == 9){ //setting higher limit of last range to 100
				Limit_2 = 100;
			}//end if
			System.out.print(Limit_1); //printing lower limit
			System.out.print("-" + Limit_2); //printing higher limit
			System.out.print("	" + freq[Index]); //printing frequency of grades in range
			System.out.println();//new line (for formatting
		}//end for 
	}//end main
}//end class
