(define (sqr x) (* x x))
(let loop ((r (read)))
  (unless (eof-object? r)
    (let ((a (read)) (b (read)))
      (display (if (< (sqr (* r 2)) (+ (sqr a) (sqr b))) "NO\n" "YES\n")))
    (loop (read))))