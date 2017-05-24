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

;; 1.3
(define (sum-of-squares x y)
  (+ (* x x) (* y y)))
(define (sum-of-squares-of-larger-two x y z)
  (cond [(and (<= x y) (<= x z)) (sum-of-squares y z)]
        [(and (<= y x) (<= y z)) (sum-of-squares x z)]
        [else (sum-of-squares x y)]))
(sum-of-squares-of-larger-two 2 2 3)
(sum-of-squares-of-larger-two 3 2 4)

(define (max x y)
  (if (< x y) y x))
(define (sum-of-squares-of-larger-two2 x y z)
  (if (<= x y)
      (sum-of-squares y (max x z))
      (sum-of-squares x (max y z))))
(sum-of-squares-of-larger-two2 2 2 3)
(sum-of-squares-of-larger-two2 3 2 4)

;; 1.4
;; operators can be "compound expressions"
;; => operators "are" values(data)
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))
(a-plus-abs-b 2 -3)
(a-plus-abs-b 2 3)

;; 1.5
(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p))
(+ 1 1)

;; applicative-order: arguments are evaluated first,
;; then, (p) causes an "infinite loop"
;; normal-order: returns "0" successfully.
