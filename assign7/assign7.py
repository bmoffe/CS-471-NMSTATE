from string import printable
f = open("control-char.txt", "w+");
lineno = 1
#print(f.read())
for line in f.readlines():
    if set(line).difference(printable):
        s = "This is line "
        n = lineno;
        L1 = (s + str(n))
        print(L1)
        #f.write(L1 * 3)
        lineno = lineno + 1
    else:
        lineno = lineno + 1
f.close
