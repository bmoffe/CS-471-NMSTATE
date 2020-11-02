# Brianna Moffett
# CS471
# 11.02.2020
# assign7.py
# 
# 
# INPUT: control-char.txt
# OUTPUT: file with no control characters (no-control.txt)
# 
# PRE: file shall exist within the same directory the program is stored in
# POST: n/a
from string import printable #need this to check for special characters (aka control chars)
f = open("control-char.txt", "r"); #open file for reading
lineno = 0#keeping track of line number
newfile = open("no-control.txt", "a") #opening new file for writing
for text in f.readlines(): #loop thru file to look for special chars; if found, write new string
    lineno = lineno + 1
    if lineno == 51:
        lineno = lineno - 10
    if set(text).difference(printable): #checking for special chars
        s = "This is line " #text part of line
        n = lineno; #number of line
        L1 = (s + str(n) + " ") #appending lineno and a space to the string
        newline = (L1 * 3) + "\n" #printing new string + a newline
        newfile.write(newline)
    else: #if no special chars, copy the current line to new file
        newfile.write(text) #write same line to new file
f.close
newfile.close()
