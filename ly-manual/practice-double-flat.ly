\version "2.18.2"
\include "lilypond-book-preamble.ly"
\include "aaron.ly"
\score {
  <<
    \new Staff \relative do' {
      \clef "G" 
      \time 8/4
      \omit Score.TimeSignature
      \omit Score.BarNumber
      %\omit Score.BarLine
      \stemUp
      \new Voice = "myRhythm" {
          %\override Beam.breakable = ##t
          %\set Timing.beatStructure  = #'(3)
          %\hide Stem
          daw raw maw faw saw law taw daw |
          daw taw law saw faw maw raw daw
      }
    }
    \new Lyrics {
      \lyricsto "myRhythm" {
        \override Lyrics.LyricText.font-shape = #'italic
        \override Lyrics.LyricText.font-series = #'bold
          daw raw maw faw saw law taw daw
          daw taw law saw faw maw raw daw
      }
    }
  >>
  \layout {
        indent = #0
        ragged-right = ##f
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
