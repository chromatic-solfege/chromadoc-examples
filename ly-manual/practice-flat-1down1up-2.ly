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
          
do ra do  s   ra re ra s    re me re  s me mi me  s  mi fa mi  s  fa se fa           \bar "" \break 
se sol se s   sol le sol s  le la le  s la te la  s  te ti te  s  ti do ti s do ra do
      }
    }
    \new Lyrics {
      \lyricsto "myRhythm" {
        \override Lyrics.LyricText.font-shape = #'italic
        \override Lyrics.LyricText.font-series = #'bold
do ra do      ra re ra      re me re   me mi me   mi fa mi   fa se fa  \bar "" \break 
se sol se     sol le sol    le la le   la te la   te ti te   ti do ti   do ra do
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
