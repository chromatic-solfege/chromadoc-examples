\version "2.18.2"
\include "lilypond-book-preamble.ly"
\paper  {
  ragged-right = ##f
  #(set! paper-alist (cons '("solfege" . (cons (* 4 in) (* 1 in))) paper-alist))
  #(set-paper-size "solfege")

  #(define fonts
    (make-pango-font-tree "Times New Roman"
                          "Nimbus Sans"
                          "Luxi Mono"
                          (/ staff-height pt 20)))
}

\score {
  <<
    \new Staff \relative c' {
      \clef "G" 
      \time 12/4
      \omit Score.TimeSignature
      \omit Score.BarLine
      \stemUp
      \new Voice = "myRhythm" {
        ces des es fes ges aes bes ces
      }
    }
    \new Lyrics {
      \lyricsto "myRhythm" {
        \override Lyrics.LyricText.font-shape = #'italic
        \override Lyrics.LyricText.font-series = #'bold
        de ra me fe se le te de
      }
    }
  >>
  \layout {
  }
}

% vim: lisp sw=1 ts=1 sts=1 et

