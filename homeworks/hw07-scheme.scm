(define (cddr s) (cdr (cdr s)))

(define (cadr s) (car (cdr s)))

(define (caddr s) (car (cddr s)))

(define (ordered? s)
  (or (null? s)
      (null? (cdr s))
      (and (<= (car s) (cadr s)) (ordered? (cdr s)))))

(define (square x) (* x x))

(define (pow base exp)
  (if (= base 1)
      1
      (if (= exp 0)
          1
          (if (= base 0)
              0
              (if (odd? exp)
                  (* base (pow base (- exp 1)))
                  (pow (* base base) (/ exp 2)))))))
