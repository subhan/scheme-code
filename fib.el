(define (fib n)
  (if (or (= n 1) (= n 0))
      n
    (+ (fib (- n 1)) (fib (- n 2)))))

(define (fact n)
  (if (= n 1)
      n
    (* n (fact (- n 1)))))
(define (square n) (* n n))

(define (abs n)
  (if (< n 0)
      (- n)
    n))

;(display (fib 4))

;(display "\n")

;(display (fact 5))

;(display "\n")

;(display (abs 0))  

;(display "\n")
