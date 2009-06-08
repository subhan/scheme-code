(define (iter a b)
	(if (=  b 0)
		a
		(iter b (remainder a b))))


(define (gcd a b)
	(if (> a b)
		(iter a b)
		(iter b a)))


(display (gcd 4 5))

(display "\n\n")
