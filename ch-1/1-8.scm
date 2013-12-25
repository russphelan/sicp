#lang planet neil/sicp

(define (cbrt x)
  (define (cbrt-iter guess old-guess)
    (if (good-enuf? guess old-guess)
        guess
        (cbrt-iter (improve guess) guess)))
  (define (good-enuf? guess old-guess)
    (< (abs (- guess old-guess)) (/ guess 100000)))
  (define (improve guess)
    (/ (+ (/ x (sq guess)) (* 2 guess)) 3))
  (define (sq x)
    (* x x))
  (cbrt-iter 1 0))

