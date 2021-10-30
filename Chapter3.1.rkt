#lang racket

; 3.1.3 profit calculation original formula
(define (profit ticket-price)
  (- (revenue ticket-price) (cost ticket-price)))

(define (revenue ticket-price)
  (* ticket-price (attendees ticket-price)))

(define (attendees ticket-price)
  (+ 120
     (* 15 10 (- 5 ticket-price))))

 (define (cost ticket-price)
   (+ 180
      (* 0.04 (attendees ticket-price))))

; 3.1.4 profit calculation new formula

(define (cost-new ticket-price)
  (* 1.5 (attendees ticket-price)))

(define (profit-new ticket-price)
  (- (revenue ticket-price) (cost-new ticket-price)))