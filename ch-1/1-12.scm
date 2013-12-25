(define (pascal rows cols)

        ((or (= cols 0)(= cols rows)) 1)
        (else (+ (pascal (- rows 1)(- cols 1))
                 (pascal (- rows 1) cols)))))
      
