#lang slideshow ; or slideshow/widescreen

(require racket/runtime-path
         rsvg
         pict)

(define-runtime-path katt.svg "UU-katt.svg")


(define uu-katt (svg-file->pict katt.svg 0.2))

; this should be some nice nais colored top bar with a logo
(define top-bar 5)
; and a nice bottom bar
(define bottom-bar 5)


(define (ltt body-text)
  (para #:align 'left (tt body-text)))

(slide #:title "Teknisk demo: Tilgjenglighetserklæring"
       uu-katt
       (t "Carl Hedgren")
       (t "Rannveig A. Skjerve")
       ) 

(slide #:title "Vi lagde ett verktøy"
       (t "Ibland blir det sån")
       'next
       (t "Hva med /.well-known-url/wcag-report?")
       'next
       (t "Går dette å automatisere?")
       'next 
       (t "Hva med ett Api fra digdir? "))

(slide #:title "Demo")
    