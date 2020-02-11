\version "2.18.2"
\include "lilypond-book-preamble.ly"
\include "aaron.ly"
\score {
  <<
    \new Staff \relative do' {
      \clef "G" 
      \time 80/4
      \omit Score.TimeSignature
      \omit Score.BarNumber
      %\omit Score.BarLine
      \stemUp
      \new Voice = "myRhythm" {
          %\override Beam.breakable = ##t
          %\set Timing.beatStructure  = #'(3)
          %\hide Stem

do' ti do  s  ti li ti  s  li la li  s  la si la  s  si sol si  s  sol fi sol  s  fi fa fi  \bar "" \break 
fa mi fa  s  mi ri mi  s  ri re ri  s  re di re  s  di do di  s  do ti do
          
      }
    }
    \new Lyrics {
      \lyricsto "myRhythm" {
        \override Lyrics.LyricText.font-shape = #'italic
        \override Lyrics.LyricText.font-series = #'bold
do ti do     ti li ti     li la li     la si la     si sol si     sol fi sol     fi fa fi  \break 
fa mi fa     mi ri mi     ri re ri     re di re     di do di     do ti do
      }
    }
  >>
  \layout {
        indent = #0
        \context {
          \Score
          \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/2)
        }
  }
}
  \paper  {
     #(set-paper-size "b5")
     #(define fonts
      (make-pango-font-tree "Times New Roman"
                            "Nimbus Sans"
                            "Luxi Mono"
                            (/ staff-height pt 20)))
  }

% vim: lisp sw=1 ts=1 sts=1 et
