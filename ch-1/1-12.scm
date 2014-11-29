(define (pascal rows cols)
  (if (or (= cols 0) (= cols rows))
      1
      (+ (pascal (- rows 1) (- cols 1))
	 (pascal (- rows 1) cols))))
