(define (evens n)
  (if (= n 0)
      0
      (+ 2
	 (evens (- n 1)))))

(evens 8)
