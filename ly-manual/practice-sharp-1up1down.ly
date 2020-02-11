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
          \set Timing.beatStructure  = #'(3)
          %\hide Stem
          do di do   s    di re di   s   re ri re   s   ri mi ri    s   mi fa mi   s   fa fi fa   s   \bar "" \break
          fi sol fi  s   sol si sol  s   si la si  s  la li la   s   li ti li   s   ti do ti  s   do di do  s
      }
    }
    \new Lyrics {
      \lyricsto "myRhythm" {
        \override Lyrics.LyricText.font-shape = #'italic
        \override Lyrics.LyricText.font-series = #'bold
do di do     di re di     re ri re     ri mi ri     mi fa mi     fa fi fa     fi sol fi     sol si sol     si la si     la li la     li ti li     ti do ti     do di do
      }
    }
  >>
  \layout {
      ragged-right = ##f
      indent = #0
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
