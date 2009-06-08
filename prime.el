(define (check-prime? n d)
	(cond
		((and (not (= n d))(= (remainder n d) 0))(display "it's not a prime\n"))
		((= n d) (display "it is a prime\n"))
		(else (check-prime? n (+ d 1)))))


(define (smallest-divisor n)
	(find-divisor n 2))

(define (find-divisor n test-divisor)
	(cond ((> (square test-divisor) n) n)
	      ((divides? test-divisor n) test-divisor)
	      (else (find-divisor n (+ 1 test-divisor)))))	
	
(define (divides? a b)
	(= (remainder b a) 0))

(define (square n) (* n n))

;(define (prime n)
;	(check-prime? n 2))

(define (prime n)
	(= n (smallest-divisor n)))
 

(if (prime 7)
	(display "it's a prime\n")
	(display "it's not a prime\n")) 
