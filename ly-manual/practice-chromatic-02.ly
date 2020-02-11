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
do ra re me mi fa se sol le la te ti do | do ti li la si sol fi fa mi ri re di do
      }
    }
    \new Lyrics {
      \lyricsto "myRhythm" {
        \override Lyrics.LyricText.font-shape = #'italic
        \override Lyrics.LyricText.font-series = #'bold
do ra re me mi fa se sol le la te ti do
do ti li la si sol fi fa mi ri re di do    
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
