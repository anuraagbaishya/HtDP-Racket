#lang racket

(require htdp/convert)

; Ex 2.2.1 Fahrenheit -> Celsius
(define (fahrenheit->celsius f)
  (/ (* (- f 32) 5) 9))

; Ex 2.2.2 Dollar -> Euro
(define (dollar->euro dollar)
  (* 0.86 dollar))

; Ex 2.2.3 Area of triangle
(define (triangle side height)
  (* 0.5 (* side height)))

; Ex 2.2.4 convert3
(define (convert3 a b c)
  (+ (* c 100) (* b 10) a))

; Ex 2.2.5 expressions
(define (exp1 n)
  (+ (sqr n) 10))

(define (exp2 n)
  (* 0.5 (+ (sqr n) 20)))

(define (exp3 n)
  (- 2 (/ 1 n)))