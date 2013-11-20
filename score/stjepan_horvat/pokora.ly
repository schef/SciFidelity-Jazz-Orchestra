\version "2.14.2"

\include "deutsch.ly"

pnOne = \relative c' {
	r16 c' b ges ~ ges g as f
	r16 es des ces ~ ces es ges c, |
}

pnTwo = \relative c {
	f8 as <c e> b
	es,8 e <ges b> as, |
}

pnThree = \relative c {
	<as, as' ges' b c ges'>1 ~ |
	<as as' ges' b c ges'>1
}

pnFour = \relative c' {
	r16 c' b ges ~ ges g as f
	r16 es des ces ~ ces es ges ~ < ges c,>16 ~ |
	< ges c,>1 |
}

pnFive = \relative c {
	f8 as <c e> b
	es,8 e <ges b> ~ < ges b as,> ~ |
	< ges b as,>1 |
}

pnSix = \relative c {
	f2 g |
	as2 a |
	b2 as |
	ges f |
}

pnSeven = { << \pnSix \transpose c c, \pnSix >> }

clOne = \relative c' {
	as4. as8 b b as b |
	c2 c |
	des4. des8 c c des c |
	b2 a |
	}

clTwo = \relative c'' {
	<as f>4. <as f>8 <b es,> <b es,> <as f> <b g> |
	<c as>2 <c a> |
	<des b>4. <des b>8 <c as> <c as> <des as> <c as> |
	<b ges>2 <a f> |
	}

pnEight = { \transpose c c' \clOne }

pnNine = \relative c'' {
	\repeat unfold 28 { des16 c b a } |
	d16 c b a c b a g b as g f as g f e |
}

pnTen = \relative c {
	%<f a g'>1
	<b as' des f>1 ~|
	<b as' des f>2 <b as' des f>2 |
	<es g b des>1 ~ |
	<es g b des>1 |
	<ges b deses e>1 ~ | 
	<ges b deses e>1 | 
    <g b c e>1 ~ | 
    <g b c e>2 <g b c e c,>2 |
}

pnEl = \relative c {
  f8 as c f, es g b es, |
  as c es as, a c f a, |
  b des f b, as c es as, |
  ges b des ges f c a c |
}

%PLAYLISTA
pianoOneIntro = { \pnThree }
pianoTwoIntro = { R1*2 }
celloIntro = { R1*2 }

pianoOnePre = { \repeat unfold 2 \pnTwo \pnFive }
pianoTwoPre = { \repeat unfold 2 \pnOne \pnFour }
celloPre = { R1*4  }

pianoOneTheme = { \pnSeven \pnSeven }
pianoTwoTheme = { R1*4 \pnEight }
celloTheme = 	{ \repeat unfold 2 \clOne }

pianoOneB = { \pnNine }
pianoTwoB = { \pnTen }
celloB = { R1*8 }

pianoOneThemeTwo = { << { \pnEl \pnEl } \pianoTwoTheme >> }
pianoTwoThemeTwo = {\pianoOneTheme }
celloThemeTwo = { \clTwo \clTwo }

pianoOne = { \pianoOneIntro \pianoOnePre \pianoOneTheme \pianoOneB	\pianoOnePre	\pianoOneThemeTwo }
pianoTwo = { \pianoTwoIntro \pianoTwoPre \pianoTwoTheme \pianoTwoB	\pianoTwoPre	\pianoTwoThemeTwo }
cello    = { \celloIntro 	\celloPre	 \celloTheme 	\celloB		\celloPre		\celloThemeTwo  }


%showLastLength = R1*4
\score {
	<<
	\new Staff { \pianoOne }
	\new Staff { \pianoTwo }
	\new Staff \with {midiInstrument = #"cello"} { \cello }
	>>
	\layout {}
	\midi {}
	}
