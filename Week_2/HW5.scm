(define (double procedure)
        (lambda (x) (procedure (procedure x))))

(define (inc n) (+ n 1))


;;(((double (double double)) inc) 5) ==> 21