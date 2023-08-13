(define (every proc sentence)
  (if (null? sentence)
      '()
      (cons (proc (car sentence)) (every proc (cdr sentence)))))


(define (square x) (* x x))
