# lang sicp
(define (sqrt-iter guess last-guess x) 
(if (good-enough? guess last-guess x) 
 guess
( sqrt-iter (improve guess x) guess x)))

(define (improve guess x)
(average guess (/ x guess)))

(define (average a b) (/ (+ a b) 2))
(define (good-enough? guess last-guess x)
(< (abs (- (* guess last-guess) x)) (/ guess 100000)))

(define (sqrt x) (sqrt-iter 1.0 0 x))
(sqrt 9)