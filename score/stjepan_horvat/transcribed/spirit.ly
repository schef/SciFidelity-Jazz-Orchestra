\version "2.14.2"
\include "deutsch.ly"

zbor = \relative c'' {
  <h g d g,>2 <h a d, f,>2 <h gis d e,>1
}

akordi = \chordmode {
  g2 h:m7.5-/f e1:7
}

\score {
  \new ChordNames { \akordi }
  %\new Staff { \zbor }
  \midi {}
  }
