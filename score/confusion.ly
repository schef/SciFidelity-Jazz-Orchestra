\version "2.14.2"

\include "AccordsJazzDefs.ly"
\include "deutsch.ly"
\include "swing.ly"

\header {
    title = "CONFUSION"
    subtitle = "(ZBUNJENOST)"
    composer = "STJEPAN HORVAT"
    }

chordes = \chordmode {
    \set chordChanges = ##t
    f1:maj7.3- | s1 | b:7 | s1 |
    es:maj7 | s1 | es:maj7.3- | s2 s8 e4.:m7.5- |
    f1:maj7.3- | s1 | b:7 | s1 |
    es1:maj7 | s1 | c:7 | s1 |
}

scores = \relative c'' {
    #(set-accidental-style 'modern-cautionary)
    \tempo 4 = 160
    g2. f8 as ~ |
    as2.. f8 |
    g8 g g4 g8 f4 as8 ~ |
    as4. es8 f fes es4 | \break
    f2 ~ f8 es4\staccato g8 ~ |
    g2.. es8 |
    f8 f f4 f8 es4 ges8 ~ |
    ges2 ~ ges8 g r4 | \break

    g2. f8 as ~ |
    as2.. f8 |
    g8 g g4 g8 f4 as8 ~ |
    as4. es8 f fes es4 |
    f2 ~ f8 es4\staccato g8 ~ |
    g2. cis,4 |
    c4 e g b8 as ~ |
    as8 g4 g8 e f g4 |
    }

scoresOne = {
    e''2. d''8 f'' ~  |
    f''2.. d''8 |
    e'' e'' e''4 e''8 d''4 f''8 ~  |
    f''4. c''8 d'' des'' c''4 |
    d''2 ~  d''8 c''4-.  es''8 ~  |
    es''2.. c''8 |
    d'' d'' d''4 d''8 c''4 es''8 ~  |
    es''2 ~  es''8 e'' r4 |
    e''2. d''8 f'' ~  |
    f''2.. d''8 |
    e'' e'' e''4 e''8 d''4 f''8 ~  |
    f''4. c''8 d'' des'' c''4 |
    d''2 ~  d''8 c''4-.  es''8 ~  |
    es''2. ais'4 |
    as' c'' e'' g''8 f'' ~  |
    f'' e''4 e''8 c'' d'' e''4 |
}

scoresTwo = {
    d''2. c''8 es'' ~  |
    es''2.. c''8 |
    d'' d'' d''4 d''8 c''4 es''8 ~  |
    es''4. b'8 c'' ces'' b'4 |
    c''2 ~  c''8 b'4-.  d''8 ~  |
    d''2.. b'8 |
    c'' c'' c''4 c''8 b'4 des''8 ~  |
    des''2 ~  des''8 d'' r4 |
    d''2. c''8 es'' ~  |
    es''2.. c''8 |
    d'' d'' d''4 d''8 c''4 es''8 ~  |
    es''4. b'8 c'' ces'' b'4 |
    c''2 ~  c''8 b'4-.  d''8 ~  |
    d''2. gis'4 |
    g'_"2x rit." b' d'' f''8 e'' ~  |
    e'' d''4 d''8 b' c'' d''4 |
}

\paper {
    print-page-number = ##f
}
\bookpart {
\score {
    <<
    \new ChordNames { \chordes \chordes \chordes }
    \new Staff { \scores \break \mark \markup { \bold "SOLOS" } \bar ":|:" \repeat unfold 16 { s1 } \bar ":|:" \break 
    << \transpose c c \scores \transpose c c, \scoresOne \transpose c c, \scoresTwo >> \bar ":|"
    }
    >>
    \header { subsubtitle = "in C" }
    %\layout { \context { \Staff \accepts "ChordNames" } }
    }
}
\bookpart {
\score {
    <<
    \new ChordNames { \transpose c d { \chordes \chordes \chordes } }
    \new Staff { \transpose c d { \scores \break \mark \markup { \bold "SOLOS" } \bar ":|:" \repeat unfold 16 { s1 } \bar ":|:" \break 
    << \transpose c c \scores \transpose c c, \scoresOne \transpose c c, \scoresTwo >> \bar ":|" }
    }
    >>
    }
    \header { subsubtitle = "in Bb" }
    }
    
\score {
    <<
    \new ChordNames { \chordes }
    \new Staff \with {midiInstrument = #"clarinet"} { \swingIt #'8 << \transpose c c \scores >> }
    \new Staff \with {midiInstrument = #"flute"} { \swingIt #'8 << \transpose c c, \scoresOne >> }
    \new Staff \with {midiInstrument = #"trombone"} { \swingIt #'8 << \transpose c c, \scoresTwo >> }
    >>
    \midi {}
    }
