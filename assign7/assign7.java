// Brianna Moffett
// 11.02.2020
// CS471
// assign7.java
//
// INPUT: control-char.txt
// OUTPUT: no-control-java.txt
//
// PRE: file shall exist in the same working directory as the program
// POST: n/a
import java.io.File; //read and write file imports
import java.io.FileWriter;
import java.io.FileNotFoundException;
import java.util.Scanner; //scanner import
import java.util.regex.Matcher; //regex imports
import java.util.regex.Pattern;

public class assign7{
	public static void main(String [] args){
		try{ //we try to do the stuff that we need to file
			File f = new File("control-char.txt"); //reading original file
			FileWriter nf = new FileWriter("no-control-java.txt"); //new file
			Scanner scnr = new Scanner(f); //for checking end of file
			Pattern p = Pattern.compile("\\p{C}|$", Pattern.CASE_INSENSITIVE); //checking for special chars based on regular expression
			int lineno = 1; //tracking line number
			while(scnr.hasNextLine()){ //while !EOF, make sure that if the line contains special characters, we replace it
				String text = scnr.nextLine();
				Matcher m = p.matcher(text);
				boolean b = m.find(); //storing boolean value of the matcher results
				if (lineno == 51){ //if we reach end of file, break
					break;
				}
				if (b){ //if we find a match, replace string
					String s = "This is line ";
					String n = lineno + "";
					String L1 = (s + n + " "); //string formatting
					String L2 = L1; //string formatting
					String L3 = L1; //string formatting
					String content = L1 + L2 + L3; //putting full string together
					nf.write(content + "\n"); //writing string to file
					lineno++; //incrementing line number var
				}
				else{ //if match is not found, copy line
					nf.write(text); //copying line from original file
					lineno++; //increment line number var
				}
			}
			scnr.close(); //closing reader and writer
			nf.close();
		}
		catch (Exception e){ //if something goes wrong, yell loudly
			System.out.println("ERROR.");
			e.printStackTrace(); //and show the user exactly what we are yelling about
		}
	}	
}
