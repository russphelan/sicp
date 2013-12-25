#lang planet neil/sicp

(define (sum-sq-larger x y z)
  (cond ((and (< x y) (< x z)) (+ (sq y) (sq z)))
        ((and (< y x) (< y z)) (+ (sq x) (sq z)))
        (else (+ (sq x) (sq y)))))
  
(define (sq x)
  (* x x))