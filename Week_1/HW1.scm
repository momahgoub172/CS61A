;Exercise 1.6:
;Helper Functions
(define (square x)
    (* x x))

(define (abs n)
    (cond ((> n 0) n)
        ((= n 0) 0)
        ((< n 0) (* -1 n))))

(define (improve guess num)
    (average guess (/ num guess)))

(define (average x y)
    (/ (+ x y) 2))

(define (good-enough? guess num)
    (< (abs (- (square guess) num)) 0.001))


(define (new-if predicate then-clause else-clause)
    (cond (predicate then-clause)
          (else else-clause)))
;(new-if (= 2 3) 0 5) == passed
;(new-if (= 2 3) 0 5) == passed
;Delighted, Alyssa uses new-if to rewrite the square-root program:

(define (sqrt-iter guess x)
    (new-if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x) x)))

(define (sqrt num)
    (sqrt-iter 1.0 num))


;When i run code i get this error
#|
STk> (sqrt 4)
*** Error:
    Segmentation violation: Returning to toplevel
Current eval stack:
__________________
  0    guess
  1    (square guess)
  2    (- (square guess) num)
  3    (abs (- (square guess) num))
  4    (< (abs (- (square guess) num)) 0.001)    
  5    (new-if (good-enough? guess x) guess (sqrt-iter (improve guess x) x))
  6    (new-if (good-enough? guess x) guess (sqrt-iter (improve guess x) x))
  7    (new-if (good-enough? guess x) guess (sqrt-iter (improve guess x) x))
  8    (new-if (good-enough? guess x) guess (sqrt-iter (improve guess x) x))
  9    (new-if (good-enough? guess x) guess (sqrt-iter (improve guess x) x))
 10    (new-if (good-enough? guess x) guess (sqrt-iter (improve guess x) x))
|#

;This because new-if will evaluate both(then-clause , else-clause) causing infinite loop
;why it will eval both? because new-if is just function that follows applicative order which first eval subexepressins
;to solve this we replace new-if with if which is special form eval only one clause(then-clause , else-clause)