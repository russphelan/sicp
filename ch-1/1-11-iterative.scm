(define (f n)
  (if (< n 3)
      n
      (f-iter 2 1 0 n)))

;takes 3 args, current term, term n-1, and term n-2. 
(define (f-iter a b c count)
  (if (< count 3)
      a
      (f-iter (+ a (* 2 b)(* 3 c)) 
              a
              b
              (- count 1))))