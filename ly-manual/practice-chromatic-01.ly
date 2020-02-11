\version "2.18.2"
\include "lilypond-book-preamble.ly"
\include "aaron.ly"
\score {
  <<
    \new Staff \relative do' {
      \clef "G" 
      \time 13/4
      \omit Score.TimeSignature
      %\omit Score.BarLine
      \stemUp
      \new Voice = "myRhythm" {
do di re ri mi fa fi sol si la li ti do |  do ti te la le sol se fa mi me re ra do
      }
    }
    \new Lyrics {
      \lyricsto "myRhythm" {
        \override Lyrics.LyricText.font-shape = #'italic
        \override Lyrics.LyricText.font-series = #'bold
do di re ri mi fa fi sol si la li ti do    do ti te la le sol se fa mi me re ra do
      }
    }
  >>
  \layout {
        ragged-right = ##f
  }
}
  \paper  {
    #(define fonts
      (make-pango-font-tree "Times New Roman"
                            "Nimbus Sans"
                            "Luxi Mono"
                            (/ staff-height pt 20)))
  }

% vim: lisp sw=1 ts=1 sts=1 et
