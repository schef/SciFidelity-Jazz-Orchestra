\version "2.14.2"

\include "deutsch.ly"
\include "../swing.ly"

global = {
  \key es \major
  \tempo 4 = 160
  \clef bass
}

sopran = \relative c' {
  \global
  r4 g4 es8 f ~ f4 |
  es1 |
  r2 ges8 ( f ) es es ~ |
  es1 |
  r2.. es8 |
  g8 g g4 g8 g4 f8 ~ |
  f8 es4. r4. es8 |
  f8 f f4 f8 g4 f8 ~ |
  f4 g4 ~ g8 g ~ g g |
  es8 es ~ es c es4 r8 c |
  es8 f4 g8 ~ g2 |
  es8 es4 es8 ~ es es4. |
  ges8 ges4 f8 ~ f2 |
  r4 g8 g g4 g |
  g8 g g f8 ~ f4 f |
  g4 g f8 f4 es8 ~ |
  es8
}

alt = \relative c {
  \global
  %\stemUp
  r1 |
  ges'8 ges4 ges8 ~ ges2 |
  ges4 ges r2 |
  des8 des4 des8 ~ des2 |
  des2 des4 r4 |
  b'8 b b4 b8 b4 as8 ~ |
  as8 g4. r4. g8 |
  a8 a a4 a8 a4 as8 ~ |
  as4 as4 ~ as8 as ~ as as |
  g8 g ~ g es g4 r8 es |
  g8 as4 b8 ~ b2 |
  as8 as4 as8 ~ as as4. |
  a8 a4 a8 ~ a2 |
  r4 b8 b b4 b |
  b8 b b a8 ~ a4 a |
  b4 b as8 as4 g8 ~ |
  g8

}

tenor = \relative c {
  \global
  %\stemDown
  r1 |
  c8 c4 c8 ~ c2 |
  c4 c r2 |
  b8 b4 b8 ~ b2 |
  b2 b4 r4 |
  es8 es es4 es8 es4 c8 ~ |
  c8 b4. r4. b8 |
  es8 es c4 c8 es4 d8 ~ |
  d4 d4 ~ d8 d ~ d d |
  b8 b ~ b g b4 r8 g |
  b8 c4 es8 ~ es2 |
  c8 c4 c8 ~ c c4. |
  c8 c4 c8 ~ c2 |
  r4 es8 es es4 es |
  es8 es es c8 ~ c4 c |
  es4 es c8 c4 b8 ~ |
  b8

}

bass = \relative c {
  \global
  %\stemDown
  r1 |
  as8 as4 as8 ~ as2 |
  as4 as r2 |
  g8 g4 g8 ~ g2 |
  g2 g4 r4 |
  b8 b b4 b8 b4 as8 ~ |
  as8 g4. r4. g8 |
  f8 f f4 f8 f4 b8 ~ |
  b4 b4 ~ b8 b ~ b b |
  es,8 es ~ es es es4 r8 es |
  g8 g4 g8 ~ g2 |
  as8 as4 as8 ~ as as4. |
  f8 f4 f8 ~ f2 |
  r4 b8 b b4 b |
  b8 b b g8 ~ g4 g |
  f4 f f8 f4 f8 ~ |
  f8

}
lead = { << \sopran >> }
voices = { << \alt \tenor >> }

\score {
<<
  \new Staff { \sopran }
  \new Staff { \alt }
  \new Staff { \tenor }
  \new Staff { \bass }
  >>
  \layout {}
  }

\score {
<<
  \new Staff { \swingIt #'8 \transpose c c' \sopran }
  \new Staff { \swingIt #'8 \transpose c c' \alt }
  \new Staff { \swingIt #'8 \transpose c c' \tenor }
  \new Staff { \swingIt #'8 \transpose c c' \bass }
  >>
  \midi {}
  }
