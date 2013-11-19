\version "2.14.2"

\include "/AccordsJazzDefs.ly"
\include "deutsch.ly"

%-------------------------- Titres et entetes
myStaffSize = #30
#(set-global-staff-size myStaffSize)
#(set-default-paper-size "a4")
\paper {
	#(define fonts	(make-pango-font-tree "Dom Casual" "DejaVu Sans Condensed" "lilyjazzchord" (/ myStaffSize 20)))
	indent = 0
	system-system-spacing #'basic-distance = #7
	system-system-spacing #'padding = #3
	markup-system-spacing #'padding = #3
}

\header	{
	title =		\markup { \fontsize #+4   "MONIKA"}
	subtitle =	\markup { \fontsize #+1   "(Nije baš neka sreća od cure)"	}
	poet =		\markup { \fontsize #+1   "Šlampavo"	}
	composer = 	\markup { \fontsize #+1   "Stjepan Horvat"}
}

accords = \chordmode {
\semiGermanChords
\set chordChanges = ##t
    cis1:7 | fis2.:13 h4:maj | h1:maj | h:maj |
    cis1:7 | fis2.:13 h4:maj | h1:maj | h:maj |
    cis1:7 | d:dim | cis2:m7 dis:7 | gis1:m6 |
    cis1:7 | cis:7 | g:7 | fis2:7 c:dim |
    cis1:7 | fis2.:13 h4:maj | h1:maj | h:maj |
}

klarinet = \relative c' {
    \set midiInstrument = #"clarinet"
    \key h \major
    \repeat volta 2 {
    r8^\markup { "Denfer" } gis''4. fisis4 gis |
    h4. ais2 eis8 |
    gis4 fis4 ~ fis2 |
    r1 |
    r8 gis4. fisis4 gis |
    h4. cis ais8 fis ~ |
    fis1 |
    r1 |
    r8 gis4. h4 cis8 d |
    r1 |
    r8 h4. fisis4 ais8 gis |
    r1 |
    }
    \alternative {
    {
    r8 fisis4. gis4 ais8 h |
    r2. ais8 gis |
    r2. g8 fis |
    r1 |
    }
    {
    r8 gis4. fisis4 gis |
    h4. cis ais8 h |
    r1 |
    r1 | \bar "|."
    }
    }
}

trombon = \relative c {
    \set midiInstrument = #"trombone"
    \key a \minor
    \clef bass
}

rijeci = \lyricmode {
}
rijecidva = \lyricmode {
}
\score {
	<<
	\new ChordNames { \transpose h b \accords}
    \new Staff \new Voice = chant { \transpose h b \klarinet }
%    \new Lyrics \lyricsto chant { \rijeci} 
%    \new Lyrics \lyricsto chant { \rijecidva} 
%    \new Staff { \trombon }
	>>
    \layout {
    \context { \Score
                %\override LyricText #'font-name = #"DejaVu Sans Condensed"
                \override LyricText #'font-size = #5

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
            \Score tempoWholesPerMinute = #(ly:make-moment 150 4)
                 } 
              }
}

