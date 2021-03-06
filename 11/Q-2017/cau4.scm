(with-input-from-file "CAU4.INP" (lambda ()
  (with-output-to-file "CAU4.OUT" (lambda ()
    (define x (list->string (let read-string ((c (read-char)))
      (if (or (eof-object? c) (char=? c #\newline))
          '()
          (cons c (read-string (read-char)))))))
    (let find-palin ((i 0))
      (if ((lambda (s) (string=? (string-reverse s) s))
           (string-copy x i (string-length x)))
          (format #t "~a\n~a~a\n" i x (string-reverse (string-copy x 0 i)))
          (find-palin (+ i 1))))))))
