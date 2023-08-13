(define (repeated procedure times)
    (lambda (x)
        (if (= 1 times)
            (procedure x)
            ;else
            ((repeated procedure (- times 1)) 
            (procedure x)))))
;for test
(define (square x) (* x x))