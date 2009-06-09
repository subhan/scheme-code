(define (** a b)
	(if (= b 0)
		1
	    (* a (** a (- b 1)))))


(define (power a b)
	(cond ((= (remainder b  2) 0) (* (power a (/ b 2)) (power a (/ b 2))))
	      ((= b 0) 1)
	      (else (* a (power a (/ b 2)))))) 
