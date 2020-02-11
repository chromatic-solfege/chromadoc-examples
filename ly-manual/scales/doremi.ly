\version "2.18.2"
  #(use-modules (ice-9 popen))
  #(use-modules (ice-9 readline))
  #(use-modules (ice-9 rdelim))

\include "lilypond-book-preamble.ly"
\layout {
  indent = #0
}
  
{
  c'
}

#(ly:parser-include-string parser 
  (let* ((port (open-input-pipe "echo '{ c }' "))
         (str  (read-line port)))
        (close-pipe port)
    str)
)

#(ly:parser-include-string parser 
  (let* ((port (open-input-pipe "echo '\\markup{ `ls` }' "))
         (str  (read-line port)))
        (close-pipe port)
    str)
)
