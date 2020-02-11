\version "2.18.2"
\include "aaron.ly"
\include "chromatic-solfege-gen.ly"
\include "lilypond-book-preamble.ly"


asc=#(ch:transpose "se do' re mi fa sol la ti do | do ti la sol fa mi re do " )

#(define (ch:to-notes str)
   (begin
    (let*
     (
       (s str)
       (s (regexp-substitute/global #f "\\|" s 'pre "\\bar \"|\"" 'post)))
     s
     )
    )
   )

#(define (ch:to-lyrics str)
   (begin
    (let*
     (
       (s str)
       (s (regexp-substitute/global #f "\\|" s 'pre "\\bar \"|\"" 'post))
       (s (regexp-substitute/global #f "<" s 'pre "\\markup{ \\center-column{ " 'post))
       (s (regexp-substitute/global #f "[,']" s 'pre "" 'post))
       (s (regexp-substitute/global #f ">" s 'pre "} }" 'post))
       )
     s
     )
    )
   )

makescore-by-string = #(define-scheme-function (parser location notes) (string? )
                         #{
                           \makescore
                           \relative do' {
                             #(ly:parser-include-string parser (ch:to-notes notes) )
                           }
                           \lyricmode {
                             #(ly:parser-include-string parser (ch:to-lyrics notes) )
                           }
                         #}
                         )

%\makescore-by-string #"se do' re mi fa sol la ti do do ti la sol fa mi re do"

test = #(define-scheme-function (parser location notes) (string? )
          #{
            #(warn notes)
          #}
          )



\makescore-by-string #"do"