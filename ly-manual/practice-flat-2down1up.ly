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
do' ti te  s  ti te la  s  te la le  s  la le sol  s  le sol se  s  sol se fa  s  se fa mi  s  \bar "" \break
fa mi me  s  mi me re  s  me re ra  s  re ra do  s  ra do ti  s  do ti te
\bar "" \break
      }
    }
    \new Lyrics {
      \lyricsto "myRhythm" {
        \override Lyrics.LyricText.font-shape = #'italic
        \override Lyrics.LyricText.font-series = #'bold
        do ti te     ti te la     te la le     la le sol     le sol se     sol se fa     se fa mi     fa mi me     mi me re     me re ra     re ra do     ra do ti     do ti te
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
