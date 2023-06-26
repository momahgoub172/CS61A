(define (ends-with-e? wd)
  (equal? (last wd) 'e))

(define (ends-e sentence)
    (cond 
        ((null? sentence) '())
        ((ends-with-e? (car sentence)) (cons (car sentence) (ends-e (cdr sentence))))
        (else (ends-e (cdr sentence)))))
