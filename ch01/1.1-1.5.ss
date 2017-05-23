#lang sicp

;; 1.1
(define a 3)
(define b (+ a 1))

(+ a b (* a b))
(= a b)

(if (and (> b a) (< b (* a b)))
    b
    a)
;; => 4

(cond [(= a 4) 6]
      [(= b 4) (+ 6 7 a)]
      [else 25])
;; => 16

(+ 2 (if (> b a) b a))

(* (cond [(> a b) a]
         [(< a b) b]
         [else -1])
   (+ a 1))
;; (* b (+ a 1)) => 16

;; 1.2
(/ (+ 5 4 (- 2 (- 3 (+ 6 4/5))))
   (* 3 (- 6 2) (- 2 7)))
;; => -37/150

