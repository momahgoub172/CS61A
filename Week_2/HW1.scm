;Exercise 1.31
;returns the product of the values of a function at points over a given range
(define (product term a next b)
    (if (> a b)
        1
        (* (term a) (product term (next a) next b))))


;;Test for product
(define (inc n) (+ n 1))
(define (identity x) x)
(define (product-of-numbers a b)    
    (product identity a inc b))

;factorial
(define (factorial n)
    (product identity 1 inc n))

;approximations to π
(define (approx-term x)
    (/ (* x (+ x 2)) (* (+ x 1) (+ x 1))))
(define (approx-of-pi n)
(* 4 (product approx-term 1 inc n)))
