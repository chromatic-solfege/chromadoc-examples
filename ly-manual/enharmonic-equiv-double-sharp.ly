\version "2.18.2"
\include "lilypond-book-preamble.ly"
\include "aaron.ly"
\score {
  <<
    \new Staff \relative do' {
      \clef "G" 
      \time 23/4
      \omit Score.TimeSignature
      \omit Score.BarNumber
      %\omit Score.BarLine
      \stemUp
      \new Voice = "myRhythm" {
          %\override Beam.breakable = ##t
          %\set Timing.beatStructure  = #'(3)
          %\hide Stem
          dai re  s  rai mi  s  mai fi  s  fai sol  s  sai la  s  lai ti  s  tai di  s  dai re | \break
          re dai  s  di tai  s  ti lai  s  la sai  s  sol fai  s  fi mai  s  mi rai  s  re dai          
      }
    }
    \new Lyrics {
      \lyricsto "myRhythm" {
        \override Lyrics.LyricText.font-shape = #'italic
        \override Lyrics.LyricText.font-series = #'bold
          dai re     rai mi     mai fi     fai sol     sai la     lai ti     tai di     dai re
          re dai     di tai     ti lai     la sai     sol fai     fi mai     mi rai     re dai          
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
