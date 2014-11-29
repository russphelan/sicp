(define (expt b n)
  (if (= n 0)
      1
      (* b 
	 (expt b (- n 1)))))

(define (expt-it b n)
  (define (expt-iter b counter product)
    (if (= counter 0)
	product
	(expt-iter b (- counter 1) (* b product))))
  (expt-iter b n 1)))



(define (fast-expt-it b n)
  (define (fast-expt-iter a b n)
    (cond ((= n 0) a)
	  ((even? n) (fast-expt-iter (* a n) b (/ n 2)))
	  (else (fast-expt-iter (* a b) b (- n 1)))))
  (fast-expt-iter 1 b n))

(fast-expt-it 2 4)

(define (even? n)
  (= (remainder n 2) 0))

(define (fast-expt b n)
  (cond ((= n 0) 1)
	((even? n) (square (fast-expt b (/ n 2))))
	(else (* b (fast-expt b (- n 1))))))

(define (times a b)
  (if (= b 0)
      0
      (+ a (times a (- b 1)))))

(define (faster-times a b)
  (if (or (= b 0) (= a 0))
      0
      (if (< b a)
	  (+ a (faster-times a (- b 1)))
	  (+ b (faster-times (- a 1) b)))))

(define (fast-times a b)
  (cond ((= b 0) 1)
	((even? b) (double (fast-times a (halve b))))
	(else (+ a (fast-times a (- b 1))))))

(fast-times 3 4)

(4 4)

(double (fast-times 4 2))

(double (double (fast-times 4 1)))
(double (double (+ 4 (fast-times 4 0))))

(* 2 3)

(define (halve n)
  (/ n 2))

(fast-times 8 8)

(* 8 8) 64

(16 4)

(32 2)


      


(* 4 4)

(8 2)

(16 1) 


(* 4 6)





2^4 = 16

2^4 = 2^2 * 2^2

2^2 = 2^1 * 2^1


2^8 = 256

2^8 = 2^4 * 2^4

2^4 = 2^2 * 2^2

2^2 = 2^1 * 2^1



(a 1) (n 4)

(a 4) (n 2) 

(a 8) (n 1) 


(a 1) (n 8)

(a 16) (n 4)

(a 64) (n 2)

(a 128) (n 1)
