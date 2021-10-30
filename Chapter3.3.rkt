#lang racket

; 3.3.1

(define inch->cm 2.54)
(define foot->inch 12)
(define yard->foot 3)
(define rod->yard 5.5)
(define furlong->rod 40)
(define mile->furlong 8)

(define (inches->cm inches)
  (* inch->cm inches))

(define (feet->inches feet)
  (* foot->inch feet))

(define (yards->feet yard)
  (* yard->foot yard))

(define (furlongs->rods furlongs)
  (* furlong->rod furlongs))

(define (rods->yards rods)
  (* rod->yard rods))

(define (miles->furlongs miles)
  (* mile->furlong miles))

(define (feet->cm feet)
  (inches->cm (feet->inches feet)))

(define (yard->cm yard)
  (feet->cm (yards->feet yard)))

(define (rods->inches rods)
  (feet->inches
   (yards->feet (rods->yards rods))))

(define (miles->feet miles)
  (/ (rods->inches
   (furlongs->rods
    (miles->furlongs miles))) 12))
