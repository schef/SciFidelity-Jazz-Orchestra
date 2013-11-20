\version "2.14.2"
\include "deutsch.ly"


\header {
    title = "PROLJEĆE"
    composer = "STJEPAN HORVAT"
    subtitle = "(IZVODI SE 21.03.)"
    }

cello = \relative c'' {
    \clef bass
    \tempo 4 = 70
%TEMA
    g2. e4 |
    c2 e4 g |
    a2. f4 |
    d2 e4 f |
    g4. h,8 c4 e |
    a,4 f' d e8 f |
    g4. h,8 c4 e |
    f4 a d,8 d e8 f |
    g4. h,8 c4 e |
    a,4 f' d\trill c |
    c1

%TUTTI
    R1*7

%PROLJETNI PLES
    c8 a16 b c8 a16 b c8 f c8. f16 |
    c8. f16 c16 d c b a8 c r4 |
    fis,,4^"pizz." gis ais h |
    ais gis8 cis fis4 <d fis c'>4^"arco."
    g16 g'8 d32 b g b a c b16 a g16 g'8 d32 b g b a c b d b g |
    \clef treble d'16 b' g d g16 d' a d b32 g' d g b, g' d g d,16 d' a d |
    d,16 g8 fis16 es16 as8 g16 e16 a8 gis16 f16 b8 a16 |
    c'32 h b a as g ges f e es d des c h b a as16 g ges f e es d des |

%OLUJA
    \clef bass
    r2. r8 f8\glissando^\markup { "oponašanje vjetra" } |
    es8 r8 r2 h'4\glissando |
    \times 4/6 { g16 g,, g r8. } r2 \times 4/6 { r4 a'8 } |
    \times 4/6 { g,8 g16 g r8 } r2. |

%REPRIZA
    \tempo 4 = 60
    \clef treble
    g'''2. e4 |
    c2 e4 g |
    a2. f4 |
    d2 \clef bass e,4 f |
    g4. h,8 c4 e |
    a,4 f' d e8 f |
    g4. h,8 c4 e |
    f4 a d,8 d e8 f |
    g4. h,8 c4 e |
    a,4 f' d c8 c, |
    c,16 e g e c' g e g c g c e g c e g |
    \clef treble
    c16 e, g c e g, c e g c, e g c g c c |
    c4 r2. | \bar "|."
}

pianoR = \relative {
%TEMA
   \stemUp % Change into \stemUp to fix the bug
   \repeat unfold 2 { \times 4/6 { \change Staff = RH c16 e \change Staff = LH g, \change Staff = RH c e g } \times 4/6 { h g e c e \change Staff = LH g, } } |
   \repeat unfold 2 { \times 4/6 { \change Staff = RH c16 e \change Staff = LH a, \change Staff = RH c e f } \times 4/6 { a f e c e \change Staff = LH a, } } |
   \times 4/6 { \change Staff = RH c16 d \change Staff = LH a \change Staff = RH c d f } \times 4/6 { a f d c d \change Staff = LH a }
   \times 4/6 { \change Staff = RH c16 d \change Staff = LH a \change Staff = RH c d f } \times 4/6 { a f d c d \change Staff = LH f, } |
   \repeat unfold 2 { \times 4/6 { \change Staff = LH a16 h f a h \change Staff = RH d } \times 4/6 { f d \change Staff = LH h a h f } } |
   \change Staff = LH e16 g h \change Staff = RH d \change Staff = LH g, \change Staff = RH g' e d
   \change Staff = LH h16 c \change Staff = RH e \change Staff = LH a, g h \change Staff = RH c e |
   \times 4/6 { \change Staff = RH c16 e \change Staff = LH h \change Staff = RH c e f } \times 4/6 { a f e c e \change Staff = LH h }
   \times 4/6 { \change Staff = LH a h f a h \change Staff = RH d } \times 4/6 { f d \change Staff = LH h a h f } |
   \change Staff = LH e16 g h \change Staff = RH d \change Staff = LH g, \change Staff = RH g' e d
   \change Staff = LH h16 c \change Staff = RH e \change Staff = LH a, g h \change Staff = RH c e |
   \times 4/6 { \change Staff = RH c16 e \change Staff = LH h \change Staff = RH c e f } \times 4/6 { a f e c e \change Staff = LH h }
   \times 4/6 { \change Staff = LH a h f a h \change Staff = RH d } \times 4/6 { f d \change Staff = LH h a h f } |
   \change Staff = LH e16 g h \change Staff = RH d \change Staff = LH g, \change Staff = RH g' e d
   \change Staff = LH h16 c \change Staff = RH e \change Staff = LH a, g h \change Staff = RH c e |
   <a c>2 <h d>2\fermata |
   % This makes the second beam look much better.
   %\override Beam #'concaveness = #0

%TUTTI
	\repeat unfold 8 { \times 4/6 { g32 e c g' e c} }
	\repeat unfold 8 { \times 4/6 { gis'32 e c gis' e c} }
	\repeat unfold 8 { \times 4/6 { a'32 f c a' f c} }
	\repeat unfold 8 { \times 4/6 { a'32 f c a' f c} }
	\repeat unfold 8 { \times 4/6 { b'32 f d b' f d} }
	\repeat unfold 8 { \times 4/6 { b'32 f des b' f des} }
	a'16 f c a a' f c a c a c f a f c a |
    g'16 e c b g' e c b c_\markup { rit. } e g b c b g e |

%PROLJETNI PLES
    \repeat unfold 6 { a16 f c f } a8 c <ces des, f as>4 |
    cis8 ais16 h cis8 ais16 h cis8 fis cis8. fis16 |
    cis8. fis16 cis16 dis cis h ais8 cis r4 |
    d,16 b' g d g16 d' a d b16 d b g d16 d' a d |
    b8 <g d> b <fis d> b <g d> b <fis d> 
    <b f>16 g b fis <h fis> as h g <c g> a c gis <cis gis> b cis a
    \change Staff = LH r2 as,16 g ges f e es d des | 

%OLUJA
    \repeat unfold 2 { s1 }
    \change Staff = RH
    \times 4/6 { <c' es g c>16 <c es g c> <c es g c> s8. } s2 \times 4/6 { s4 <b es g a>8 } |
    \times 4/6 { <c es g c>8 <c es g c>16 <c es g c> s8 } s2. |

%REPRIZA 
    \change Staff = RH
    \times 4/6 { <g'' e c>8. <g e c>16 <g e c> <g e c> } <g e c>8 <g e c> \times 4/6 { <g e c>8. <g e c>16 <g e c> <g e c> } <e h g>8 <e h g>
    \times 4/6 { <c a e>8. <c a e>16 <c a e> <c a e> } <c a e>8 <c a e> \times 4/6 { <e c a>8. <e c a>16 <e c a> <e c a> } <g e c>8 <g e c>
    \times 4/6 { <a f c>8. <a f c>16 <a f c> <a f c> } <a f c>8 <a f c> \times 4/6 { <a f c>8. <a f c>16 <a f c> <a f c> } <f c a>8 <f c a>
    \times 4/6 { <d a f>8. <d a f>16 <d a f> <d a f> } <d a f>8 <d a f> <d a f>4 r4 |
    
    <d, g h>2 <g c e> |
    <e a c> <d f a>
    <d g h>2 <g c e> |
    <e a c> <d f a>
    <d h'>2 <g e'> |
    <e c'> <g>
 }

pianoL = \relative {
\clef bass
\stemDown
%TEMA
	c,1 |
	f,1 |
	d1 |
	g1 |
	e2 a |
	f2 g4. f8 |
	e2 a |
	f2 g4. f8 |
	e2 a |
	f8 e' c4 <d g,>2 |

%TUTTI
    <g g,>2. <e e,>4 |
    <c c,>2 <e e,>4 <g g,> |
    <a a,>2. <f f,>4 |
    <es es,>2 <f f,>4 <es es,> |
    <d d,>2 <es es,>4 <d d,> |
    <des des,>2 <es es,>4 <des des,> |
    <c c,>1 |
    <c' c,>1 |

%PROLJETNI PLES
    \repeat unfold 7 { f,,8 f' } <des, des'>4 |
    cis''8 ais16 h cis8 ais16 h cis8 \change Staff = RH fis \change Staff = LH cis8. \change Staff = RH fis16 |
    \change Staff = LH cis8. \change Staff = RH fis16 \change Staff = LH cis16 \change Staff = RH dis \change Staff = LH cis h ais8 cis r4 |
    d,4 b8 c d4 b8 c |
    d4 d4 d4 d4 |
    d8 d' dis, dis' e, e' f, f'  |
    r2 as,,16 g ges f e es d des |

%OLUJA
    \times 4/6 { c16 es g c es g } \change Staff = RH \times 4/6 { c16 es g c es g }
    \times 4/6 { f es a, g es \change Staff = LH h } \times 4/6 { f16 es h g es h }
    \times 4/6 { c16 es g c es g } \change Staff = RH \times 4/6 { c16 es g c es g }
    \times 4/6 { f es a, g es \change Staff = LH h } \times 4/6 { f16 es h g es h }
    \times 4/6 { c16 e g c es g } \change Staff = RH \times 4/6 { c16 es g c es g }
    \times 4/6 { f es a, g es \change Staff = LH h } \times 4/6 { f16 es h g es h }
    \times 4/6 { c16 es g c es g } \change Staff = RH \times 4/6 { c16 es g c es g }
    \times 4/6 { f es a, g es \change Staff = LH h } \times 4/6 { f16_"rit." es h g es h }

%REPRIZA
    \times 4/6 { c'8. c16 c c } c8 c \times 4/6 { c8. c16 c c } c8 c
    \times 4/6 { f,8. f16 f f } f8 f \times 4/6 { f8. f16 f f } f8 f
    \times 4/6 { d8. d16 d d } d8 d \times 4/6 { d8. d16 d d } d8 d
    \times 4/6 { g8. g16 g g } g8 g g4 r4
    <e d'>2 <a g'> |
    <f e'>2 <g f'>4. <f f'>8 |
    <e d'>2 <a g'> |
    <f e'>2 <g f'>2 |
}

%showLastLength = R1*4
\score {
<<
    \new Staff \with {midiInstrument = #"cello" 
        fontSize = #-3
            \override StaffSymbol #'staff-space = #(magstep -3)
              } { \cello }
\new PianoStaff <<
 \new Staff = "RH" { \pianoR }
 \new Staff = "LH" { \pianoL }
>>
    >>
    \layout {}
    \midi {} 
    }
