#lang racket

; 3.1.5 Use constants
; profit calculation old formula
(define attendees-5-dollars 120)
(define dime-cents 10)
(define attendee-increase 15)
(define cost-per-attendee 0.04)
(define fixed-cost 180)
(define new-cost-per-attendee 1.5)

(define (profit ticket-price)
  (- (revenue ticket-price) (cost ticket-price)))

(define (revenue ticket-price)
  (* ticket-price (attendees ticket-price)))

(define (attendees ticket-price)
  (+ attendees-5-dollars
     (* attendee-increase dime-cents (- 5 ticket-price))))

 (define (cost ticket-price)
   (+ fixed-cost
      (* cost-per-attendee (attendees ticket-price))))

; profit calculation new formula

(define (cost-new ticket-price)
  (* new-cost-per-attendee (attendees ticket-price)))

(define (profit-new ticket-price)
  (- (revenue ticket-price) (cost-new ticket-price)))