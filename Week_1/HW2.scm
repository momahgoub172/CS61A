(define (square x)
    (* x x))

(define (squares nums)
    (if (null? nums) 
        '()
        (cons (square (car nums)) (squares (cdr nums)))))