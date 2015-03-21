#lang racket/base

(require racket/contract/base
         racket/runtime-path
         cldr/core)

(provide/contract [languages            cldr-main/c]
                  [locale-display-names cldr-main/c]
                  [scripts              cldr-main/c]
                  [territories          cldr-main/c]
                  [transform-names      cldr-main/c]
                  [variants             cldr-main/c])

(define (languages loc)
  (get loc "languages.json" `(main ,loc localeDisplayNames languages)))

(define (locale-display-names loc)
  (get loc "localeDisplayNames.json" `(main ,loc localeDisplayNames)))

(define (scripts loc)
  (get loc "scripts.json" `(main ,loc localeDisplayNames scripts)))

(define (territories loc)
  (get loc "territories.json" `(main ,loc localeDisplayNames territories)))

(define (transform-names loc)
  (get loc "transformNames.json" `(main ,loc localeDisplayNames transformNames)))

(define (variants loc)
  (get loc "variants.json" `(main ,loc localeDisplayNames variants)))


(define (get loc file path)
  (if (modern-locale? loc)
      (cldr-json ZIP-PATH PKG (build-path "main" loc file) path)
      (raise-locale-not-found loc PKG)))

(define PKG "cldr-localenames-modern")
(define-runtime-path ZIP-PATH "data/cldr-localenames-modern.zip")
