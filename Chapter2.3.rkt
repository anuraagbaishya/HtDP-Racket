#lang racket

; 2.3.1 tax = 15% of grosspay, netpay = grosspay - tax; grosspay = 12 * hours
(define (tax grosspay)
  (* grosspay 0.15))

(define (netpay hours)
  (- (* hours 12) (tax(* hours 12))))

; 2.3.2 sum coins = sum of all coins 
(define (sum-coins pennies nickles dimes quarters)
  (+ (* 0.01 pennies) (* 0.05 nickles) (* 0.10 dimes) (* 0.25 quarters)))

; 2.3.3 total profit
(define (total-profit attendees)
  (- (* 5 attendees) (+ 20 (* 0.5 attendees))))