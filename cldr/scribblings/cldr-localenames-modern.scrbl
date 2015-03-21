#lang scribble/manual

@(require scribble/eval
          (for-label racket/base
                     racket/runtime-path
                     cldr/core
                     cldr/localenames-modern
                     json))
@(define the-eval (make-base-eval))
@(the-eval '(require cldr/core
                     cldr/localenames-modern))

@title{CLDR Locale Names for Modern Locales}
@author[@author+email["Jon Zeppieri" "zeppieri@gmail.com"]]

@margin-note{
@deftech{CLDR} is the @link["http://cldr.unicode.org/"]{Common Locale Data Repository}, a
database of localization information published by the Unicode Consortium.
}

The CLDR Localenames-Modern library is a Racket interface to the
@link["https://github.com/unicode-cldr/cldr-localenames-modern"]{cldr-localenames-modern} JSON
distribution published by the Unicode Consortium. 

See @(other-manual '(lib "cldr/scribblings/cldr-core.scrbl")) for more information.

@defmodule[cldr/localenames-modern]

@defproc[(languages [locale string?]) jsexpr?]{
Returns raw data from @tt{languages.json} for the given @racket[locale].
}

@defproc[(locale-display-names [locale string?]) jsexpr?]{
Returns raw data from @tt{localeDisplayNames.json} for the given @racket[locale].
}

@defproc[(scripts [locale string?]) jsexpr?]{
Returns raw data from @tt{scripts.json} for the given @racket[locale].
}

@defproc[(territories [locale string?]) jsexpr?]{
Returns raw data from @tt{territories.json} for the given @racket[locale].
}

@defproc[(transform-names [locale string?]) jsexpr?]{
Returns raw data from @tt{transformNames.json} for the given @racket[locale].
}

@defproc[(variants [locale string?]) jsexpr?]{
Returns raw data from @tt{variants.json} for the given @racket[locale].
}
