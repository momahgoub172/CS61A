(define (ordered? sentence)
  (cond ((or (null? sentence) (null? (cdr sentence))) #t)
        ((> (car sentence) (cadr sentence)) #f)
        (else (ordered? (cdr sentence)))))