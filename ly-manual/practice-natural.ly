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
        do re mi fa sol la ti do | do ti la sol fa mi re do
      }
    }
    \new Lyrics {
      \lyricsto "myRhythm" {
        \override Lyrics.LyricText.font-shape = #'italic
        \override Lyrics.LyricText.font-series = #'bold
        do re mi fa sol la ti do   do ti la sol fa mi re do
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

