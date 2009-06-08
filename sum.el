(define (cube n) (* n n n))

(define (sum term a next b)
	(if (> a b)
		0
		(+ (term a)
		   (sum term (next a) next b))))

(define (inc n) (+ n 1))

(define (sum-cubes a b)
	(sum cube a inc b))

;(define inc (lambda (x) (+ 1 x)))

;(1/(1.3))+(1/(5*7))+(1/(9*11))+ ....

(define (pi-sum1 a b)
	(if (> a b)
		0
		(+ (/ 1.0 (* a (+ a 2))) (pi-sum1 (+ a 4) b))))

(define (pi-sum2 a b)
	(define (pi-term x)
		(/ 1.0 (* x (+ x 2))))
	(define (pi-next x)
		(+ x 4))
	(sum pi-term a pi-next b))

(define (pi-sum3 a b)
	(sum (lambda (x) (/ 1.0 (* x (+ x 2))))
		a
	     (lambda (x) (+ x 4))
		b))
(define (square n) (* n n))

(define (f x y)
	(define (f-helper a b)
		(+ (* x (square a))
		   (* y b)
		   (* a b)))
	(f-helper (+ 1 (* x y))
		  (- 1 y))) 
(define (f1 x y)
	(let ((a (+ 1 (* x y)))
	      (b (- 1 y)))
	(+ (* x (square a))
	   (* y b)
	   (* a b))))


(define (f2 x y)
	((lambda (a b)
		(+ (* x (square a))
		   (* y b)
		   (* a b)))
	 (+ 1 ( * x y))
	 (- 1 y)))


(define (integral f a b dx)
	(define (add-dx x) (+ x dx))
	(* (sum f (+ a (/ dx 2.0)) add-dx b) dx))

(display (sum-cubes 1 10))
(newline)
