\version "2.14.2"

\include "deutsch.ly"

%showLastLength = R1*3
\score {
<<
\new ChordNames \with { midiInstrument = "drawbar organ" } 
  \transpose c c, \chordmode {
	f1:m7 ~
	f1:m7
	as1 ~
	as1
	des ~
	des
	ces:7 ~
	ces:7
	f:m7
  }
\new Staff \with { midiInstrument = "trombone" } {
  \relative c {
	\tempo 4 = 130
	\clef bass
	f2. as8 f |
	b8 c4 es c8 f es ~ |
	es2. f,8 es |
	as8 b4 c f,8 es'8 des ~ |
	des2. as8 f |
	as8 b4 c f,8 es'8 des ~ |
	des2. des8 es |
	des4 des des4 es8 f,8 ~ |
	f2. as8 f |

}
}
>>
\layout {}
\midi {}
}
