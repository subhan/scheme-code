(define (abs n)
	(if (< n 0)
		(- n)
		n))

(define (sqaure n)
	(* n n))

(define (average a b)
	(/ (+ a b) 2))

(define (improve guess n)
	(average guess (/ n guess)))

(define (good-enough? guess n)
	(< (abs (- (sqaure guess) n)) 0.001))

(define (sqrt-iter guess n)
	(if (good-enough? guess n)
		guess
		(sqrt-iter (improve guess n)
			n)))

(define (sqrt n)
  (sqrt-iter 1.0 n))


(display (sqrt 4))
(display "\n")
