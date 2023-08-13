(define (filtered-accumulate combiner null-value term a next b predicate)
    (if (> a b)
        null-value
        (let ((current (term a)))
            (if (predicate current)
                (combiner current (filtered-accumulate combiner null-value term (next a) next b predicate))
                (filtered-accumulate combiner null-value term (next a) next b predicate)))))

;for test
(define (odd? n)
  (= (remainder n 2) 1))
(define (inc n) (+ n 1))
(define (square x) (* x x))
(define (sum-of-squares-of-odd a b)
    (filtered-accumulate + 0 square a inc b odd?))
