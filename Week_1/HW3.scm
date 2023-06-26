;function that take a word and switch it
(define (switch-wd wd)
    (cond ((or (equal? wd 'i) (equal? wd 'me)) 'you)
        ((equal? wd 'you) 'me)
        (else wd)))

;apply it to each word in sentence
(define (switch sentence)
    (cond ((null? sentence) '())
        ((null? (cdr sentence )) (list (switch-wd (car sentence))))
        (else (cons (switch-wd (car sentence)) (switch (cdr sentence))))))
