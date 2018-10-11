;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname 1.3.2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define sm-plurale              ; val: stringa nome plurale
  (lambda (p)                   ; p: stringa nome da pluralizzare
    (string-append
     (substring
      p
      0                         ; prima lettera
      (- (string-length p) 1)   ; lunghezza della radice
      )
     "i")                       ; desinenza plurale
    )
  )

(define last-char-comparator(word, char)
  (char=?
   (string-ref
    word
    (- (string-length word) 1)
    )
   #\a))