(define (fast-times a b)
  (cond ((= b 0) 0)
	((= a 0) 0)
	((< a b) (cond ((even? a) (double (fast-times (halve a) b)))
		       (else (+ b (fast-times (- a 1) b)))))
	(else (cond ((even? b) (double (fast-times a (halve b))))
		    (else (+ a (fast-times a (- b 1))))))))

(fast-times 12 12)


;; also takes into account which argument is smaller.
;; should save a few steps.
