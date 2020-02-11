\version "2.18.2"
\include "lilypond-book-preamble.ly"
\include "aaron.ly"
\score {
  <<
    \new Staff \relative do' {
      \clef "G" 
      \time 8/4
      \omit Score.TimeSignature
      %\omit Score.BarLine
      \stemUp
      \new Voice = "myRhythm" {
de ra me fe se le te de | de te le se fe me ra de
      }
    }
    \new Lyrics {
      \lyricsto "myRhythm" {
        \override Lyrics.LyricText.font-shape = #'italic
        \override Lyrics.LyricText.font-series = #'bold
        de ra me fe se le te de     de te le se fe me ra de
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
