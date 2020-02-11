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
        di ri ma fi si li ta di | di ta li si fi ma ri di
      }
    }
    \new Lyrics {
      \lyricsto "myRhythm" {
        \override Lyrics.LyricText.font-shape = #'italic
        \override Lyrics.LyricText.font-series = #'bold
        di ri ma fi si li ta di | di  ta li si fi ma ri di
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
