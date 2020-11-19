;;Brianna Moffett
;;11.18.2020
;;CS 471
;;assign9.lsp
;;
;;INPUT: string (countops(CD)), list(remove-duplicates)
;;OUTPUT: number of relational operators, and unique input variables
;;
;;PRE: n/a
;;POST: n/a

(defun countops(substring ops) ;;counting logical operators
    (do ((count -1 (+ count 1));;loop thru string to count occurrances of given substring
	        (position -1 (search substring ops :start2 (1+ position))))
            ((null position) count)))

;;testing
(write "Given CD (circuit descriptor)")
(terpri)
(write "---------------------------------")
(terpri)
(write "C ->  ( AND C C) | (OR C C) | (NOT C) | A[1-1000] | 1 | 0");;given CD
(terpri)
(defvar form1 "OR operators: ");;headers
(defvar form2 "AND operators: ")
(write form1)
(terpri)
(write(countops "OR" "C ->  ( AND C C) | (OR C C) | (NOT C) | A[1-1000] | 1 | 0"));;counting number of or operators in CD
(terpri)
(write form2)
(terpri)
(write(countops "AND" "C ->  ( AND C C) | (OR C C) | (NOT C) | A[1-1000] | 1 | 0"));;counting number of and operators in CD
(terpri)
(write "NOT operators: ")
(terpri)
(write(countops "NOT" "C ->  ( AND C C) | (OR C C) | (NOT C) | A[1-1000] | 1 | 0"));;counting number of not operators in CD
(terpri)

(terpri)
(terpri)
(write "INPUT VARS FOR GIVEN CD...")
(terpri)
(write'(c c c c c c a[]))
(terpri)
(write "CD WITH NO DUPLICATE VARS...")
(terpri)
(write(remove-duplicates'(c c c c c c a[])));;common lisp has it's own remove duplicates function, so i used that here
(terpri)
