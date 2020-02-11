\version "2.18.2"
\include "lilypond-book-preamble.ly"
\include "aaron.ly"
\score {
  <<
    \new Staff \relative do' {
      \clef "G" 
      \time 29/4
      \omit Score.TimeSignature
      \omit Score.BarNumber
      %\omit Score.BarLine
      \stemUp
      \new Voice = "myRhythm" {
          %\override Beam.breakable = ##t
          %\set Timing.beatStructure  = #'(3)
          %\hide Stem
          di ra  s  ri me  s  mi fe  s  ma fa  s  fi se  s  si le  s  li te  s  ti de  s  ta do  s  di ra |
          \break
          ra di  s  do ta  s  de ti  s  te li  s  le si  s  se fi  s  fa ma  s  fe mi  s  me ri  s  ra di           
          
      }
    }
    \new Lyrics {
      \lyricsto "myRhythm" {
        \override Lyrics.LyricText.font-shape = #'italic
        \override Lyrics.LyricText.font-series = #'bold
        di ra     ri me     mi fe     ma fa     fi se     si le     li te     ti de     ta do     di ra
        ra di     do ta     de ti     te li     le si     se fi     fa ma     fe mi     me ri     ra di 
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
