;;Brianna Moffett
;;11.18.2020
;;CS 471
;;assign9.lsp
;;
;;INPUT: CD
;;OUTPUT: reduction of given CD
;;
;;PRE: n/a
;;POST: n/a

(define (reduce-stmt CD) ;;reducing CD given  by user
  (cond ((null? CD) '()) ;;base case
	((not (list? CD)) CD)
	((eq? (car CD) 'NOT) (reduce-not CD));;reduce not
	((eq? (car CD) 'AND) (reduce-and CD));;reduce and
	((eq? (car CD) 'OR) (reduce-or CD));;reduce or
	))

(define (reduce-not CD);;reduce not
  (cond ((eq? (reduce-stmt (cadr CD)) 0) 1)
	((eq? (reduce-stmt (cadr CD)) 1) 0)
	(else (cons 'NOT (list (reduce-stmt (cadr CD)))))));;if statement can be reduced, do so

(define (reduce-and CD);;reduce and
  (cond ((eq? (reduce-stmt (cadr CD)) 0) 0);;if 0 and 0, reduce to 1
	((eq? (reduce-stmt (caddr CD)) 0) 0)
	((eq? (reduce-stmt (cadr CD)) 1) (reduce-stmt (caddr CD)))
	((eq? (reduce-stmt (caddr CD)) 1) (reduce-stmt (cadr CD)))
	(else (cons 'AND
		    (list (reduce-stmt (cadr CD))
			  (reduce-stmt (caddr CD)))))));;if statement can be reduced, do so

(define (reduce-or CD)
  (cond ((eq? (reduce-stmt (cadr CD)) 1) 1);;if 1 or 1, reduce to 0
	((eq? (reduce-stmt (caddr CD)) 1) 1)
	((eq? (reduce-stmt (cadr CD)) 1) (reduce-stmt (caddr CD)))
	((eq? (reduce-stmt (caddr CD)) 1) (reduce-stmt (cadr CD)))
	(else (cons 'OR
		    (list (reduce-stmt (cadr CD))
			  (reduce-stmt (caddr CD)))))));;if statement can be reduced, do so
