#lang slideshow ; or slideshow/widescreen

(require racket/runtime-path
         pict)

(define-runtime-path katt.svg "UU-katt.png")

(define uu-katt (bitmap katt.svg))

(define (ltt body-text)
  (para #:align 'left (tt body-text)))

(slide #:title "Teknisk demo: Hvordan lage Tilgjengelighetserklæring"
       (scale uu-katt 0.3)
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
       (ltt "Av og til blir det slik")
       'next
       (ltt "Hva med /.well-known-url/wcag-report?")
       'next
       (t "Noen (tm) burde skrive en RFC")
       'next
       (ltt "Kan dette automatiseres?")
       'next
       (t "Njaaeeeeee")
       'next
       (ltt "Hva med et API fra Digdir? ")
       'next
       (t "Kanskje i en fremtidlig budsjett"))

(slide #:title "Demo"
      (scale uu-katt 0.3))


(slide #:title "Takk for oss"
       (t "CONTRIBUTIONS AND PULL REQUESTS ARE WELCOME")
       (t "navikt/accessibility-tool"))
