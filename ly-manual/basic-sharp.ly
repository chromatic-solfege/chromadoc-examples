\version "2.18.2"
\include "lilypond-book-preamble.ly"
\paper  {
  ragged-right = ##f
  #(set! paper-alist (cons '("solfege" . (cons (* 4 in) (* 2 in))) paper-alist))
  #(set-paper-size "solfege")

  #(define fonts
    (make-pango-font-tree "Times New Roman"
                          "Nimbus Sans"
                          "Luxi Mono"
                          (/ staff-height pt 20)))
}

\score {
  <<
    \new Staff \relative c' {
      \clef "G" 
      \time 12/4
      \omit Score.TimeSignature
      \omit Score.BarLine
      \stemUp
      \new Voice = "myRhythm" {
        cis dis eis fis gis ais bis cis
      }
    }
    \new Lyrics {
      \lyricsto "myRhythm" {
        \override Lyrics.LyricText.font-shape = #'italic
        \override Lyrics.LyricText.font-series = #'bold
        di ri ma fi si li ta di
      }
    }
  >>
  \layout {
  }
}

% vim: lisp sw=1 ts=1 sts=1 et

