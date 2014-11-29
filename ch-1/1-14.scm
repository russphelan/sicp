(define (count-change amount kinds-of-coins)
  (cond ((= amount 0) 1)
	((or (= kinds-of-coins 0) (< amount kinds-of-coins)) 0)
	(else (+ (count-change amount (- kinds-of-coins 1))
		 (count-change (- amount (denom-of-first-coin 
					  kinds-of-coins))
			       kinds-of-coins)))))

(define (denom-of-first-coin kinds-of-coins)
  (cond ((= kinds-of-coins 5) 50)
	((= kinds-of-coins 4) 25)
	((= kinds-of-coins 3) 10)
	((= kinds-of-coins 2) 5 )
	((= kinds-of-coins 1) 1 )
	(else nil)))

(count-change 100 5)





