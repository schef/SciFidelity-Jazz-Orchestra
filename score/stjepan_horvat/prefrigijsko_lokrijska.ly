\version "2.14.2"

%\include "/AccordsJazzDefs.ly"
\include "deutsch.ly"

%-------------------------- Titres et entetes
%myStaffSize = #30
%#(set-global-staff-size myStaffSize)
%#(set-default-paper-size "a4")
%\paper {
%	#(define fonts	(make-pango-font-tree "Dom Casual" "DejaVu Sans Condensed" "lilyjazzchord" (/ myStaffSize 20)))
%	indent = 0
%	system-system-spacing #'basic-distance = #7
%	system-system-spacing #'padding = #5
%	markup-system-spacing #'padding = #3
%}

\header	{
	title =		\markup { \fontsize #+4   "PREFRIGIJSKO LOKRIJSKA"}
	subtitle =	\markup { \fontsize #+1   "(Vježba in Bb)"	}
	poet =		\markup { \fontsize #+1   "Ska | Swing"	}
	composer = 	\markup { \fontsize #+1   "Stjepan Horvat"}
}

accords = \chordmode {
\semiGermanChords
\set chordChanges = ##t
    c4:m7 c:m7 c:m7 c:dim | c1:dim |
    c1:m c1:m
    c1:dim c1:dim
    c1:m c1:dim
}

klarinet = \relative c' {
    \set midiInstrument = #"clarinet"
    c'4 b16 b r8 g8. fis16 ~ fis4 ~ |
    fis2 r16 c es c f8 es | \bar "||"
    c'8. des,16 es8 f r g16 as b8 c |
    r8 b16 as g8 f es16 g des8 c4 |
    c'8. des,16 es8 f r8 ges16 as b8 c |
    r8 b16 as ges8. f16 es16 ges des8 c4 |
    c'8. des,16 es8 f r g16 as b8 c |
    r8 b16 as ges8 f es16 ges des8 c4 | \bar "|."


}
\score {
	<<
	\new ChordNames \transpose c c \accords
    \new Staff \new Voice = chant { \transpose c c \klarinet }
	>>
    \layout {
    \context { \Score
                %\override LyricText #'font-name = #"DejaVu Sans Condensed"
                %\override LyricText #'font-size = #5

    } 
    }
    \midi {
      \context {
      \Staff
      \remove "Staff_performer"
    }
    \context {
      \Voice
      \consists "Staff_performer"      
    }
        \context {
            \Score tempoWholesPerMinute = #(ly:make-moment 92 4)
                 } 
              }
}

