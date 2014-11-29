(define (fast-expt b n)
  (define (fast-expt-iter a b n)
    (cond ((= n 0) a)
	  ((even? n) (fast-expt-iter (* a n) b (/ n 2)))
	  (else (fast-expt-iter (* a b) b (- n 1)))))
  (define (even? n)
    (= (remainder n 2) 0))
  (fast-expt-iter 1 b n))

(fast-expt 2 4) ;; equals 16



