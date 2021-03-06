(define (collatz n output)
  (if (> n 1)
      (if (= (remainder n 2) 0)
          (collatz (quotient n 2) (append output '("x 2\n")))
          (collatz (+ (* n 3) 1) (append output '("div 3\n"))))
      output))
(for-each display (reverse (collatz (read) '())))
