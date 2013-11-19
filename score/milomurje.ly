\version "2.14.2"

\include "/AccordsJazzDefs.ly"
\include "deutsch.ly"

%-------------------------- Titres et entetes
myStaffSize = #29
#(set-global-staff-size myStaffSize)
#(set-default-paper-size "a4")
\paper {
	#(define fonts	(make-pango-font-tree "Dom Casual" "DejaVu Sans Condensed" "lilyjazzchord" (/ myStaffSize 20)))
	indent = 0
	ystem-system-spacing #'basic-distance = #5
	system-system-spacing #'padding = #5
	markup-system-spacing #'padding = #3
}

\header	{
	title =		\markup { \fontsize #+4   "MILOMURJE"}
	%subtitle =	\markup { \fontsize #+1   "(Yiddish: Bay mir bistu sheyn)"	}
	poet =		\markup { \fontsize #+1   "Senjarka"	}
	composer = 	\markup { \fontsize #+1   "Stjepan Horvat"}
}

accords = \chordmode {
\semiGermanChords
\set chordChanges = ##t
    r16 cis1 fis cis gis
    cis2 cis/h fis fis:m
    cis dis:m gis fis:m cis
}

klarinet = \relative c' {
    \set midiInstrument = #"clarinet"
    \key cis \major
    \partial 16
    dis'16 |
    dis8. cis16 cis4 r8 cis16 eis gis cis8 gis16 |
    his8. ais16 ais4 r8 ais16 his dis cis his ais |
    ais8. gis16 gis4 r8 eis16 eis ais gis fis eis |
    eis8. dis16 dis4 r4 r8.

    dis16 |
    dis8. cis16 cis4 r8 cis16 eis gis cis8 gis16 |
    his8. ais16 ais4 r8 a16 h dis cis a h |
    a8. gis16 gis4 r8 eis16 eis ais gis fis eis |
    eis8. dis16 dis4 r8 dis16 eis gis fis eis dis  |
    dis8. cis16 cis4 r4 r8. | \bar "|."

}

trombon = \relative c {
    \set midiInstrument = #"trombone"
    \key a \minor
    \clef bass
}

rijeci = \lyricmode {
    Me -- đi -- mur -- je, kak si le -- po Me -- đi -- mur -- je.
    Još si lep -- še kad te ne -- mam ja,
    još si vek -- še kad te se -- njam ja.

    Mi -- lo -- mur -- je, kaj si mi -- lo Mi -- lo -- mur -- je.
    Ni -- si sve -- sno kaj sam spre -- man dat
    da te mo -- ja že -- na i -- ma rad,
    da te mo -- ja že -- na i -- ma rad.
}
rijecidva = \lyricmode {
}
\score {
	<<
	\new ChordNames \accords
    \new Staff \new Voice = chant { \klarinet }
    \new Lyrics \lyricsto chant { \rijeci} 
%    \new Lyrics \lyricsto chant { \rijecidva} 
%    \new Staff { \trombon }
	>>
    \layout {
    \context { \Score
                %\override LyricText #'font-name = #"DejaVu Sans Condensed"
                \override LyricText #'font-size = #3

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
            \Score tempoWholesPerMinute = #(ly:make-moment 127 4)
                 } 
              }
}

