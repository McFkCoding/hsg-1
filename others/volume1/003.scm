(define n (read))
(display (string-length (number->string n)))
(display " ")
(define (digitsum n) (if (> n 0)
                         (+ (modulo n 10) (digitsum (quotient n 10)))
                         0))
(display (digitsum n))
(newline)
