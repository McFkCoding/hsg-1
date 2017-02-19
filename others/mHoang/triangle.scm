(define (angel-90 a b c)
  ((lambda (x) (if (= x 0) 0 (/ x (abs x)))) (+ (* a a) (* b b) (- (* c c)))))
(display (let ((a (read)) (b (read)) (c (read)))
           (modulo (* (angel-90 a b c) (angel-90 b c a) (angel-90 c a b)) 3)))
(newline)
