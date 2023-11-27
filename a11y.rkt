#lang slideshow ; or slideshow/widescreen

(require racket/runtime-path
         rsvg
         pict)

(define-runtime-path katt.svg "UU-katt.svg")

(define uu-katt (svg-file->pict katt.svg 0.2))

(define (ltt body-text)
  (para #:align 'left (tt body-text)))

(slide #:title "Teknisk demo: Hvordan lage Tilgjengelighetserklæring"
       uu-katt
       (t "Carl Hedgren")
       (t "Rannveig A. Skjerve")
       )

(slide #:title "Tilgjengelighetserklæring er et krav"
       (t "Norge innførte EU sitt Web Accessibility Directive i 2021"
       )
       (t "Det innebærer et rapporteringskrav fra vår side")
       'next
       (t "Via et grensesnitt med en webportal")
       (t "(Du logger in med organisasjonsnummer)")
       'next
       (t "Det blir fort _veldig jobbigt_"))

(slide #:title "Vi laget et verktøy"
       (t "Av og til blir det slik")
       'next
       (t "Hva med /.well-known-url/wcag-report?")
       'next
       (t "Kan dette automatiseres?")
       'next
       (t "Hva med et API fra Digdir? "))

(slide #:title "Demo"
       uu-katt)


(slide #:title "Takk for oss"
       (t "CONTRIBUTIONS AND PULL REQUESTS ARE WELCOME")
       (t "navikt/accessibility-tool"))
