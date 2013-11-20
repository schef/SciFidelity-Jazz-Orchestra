% Lily was here -- automatically converted by /usr/bin/midi2ly from /home/data/wine/FL Studio 10/Data/Projects/easyAsALoopMachine2.mid
\version "2.13.53"

\header {
  title = "Easy As A Loop Machine"
  composer = "Filip Havaši"
  poet = "06/2012"
  subtitle = "in Eb"
  }


%#(set-default-paper-size "a4" 'landscape)
%  #(set-global-staff-size 16)
  
%melodija
melodija = \relative c' {
  \tempo 4 = 128 
  \compressFullBarRests
  %\key b \major
  R1*15 |
  \break 
  \mark \default
  r8 \grace d'8 dis8 d dis e f r8 fis
  | % 18
  \repeat volta 2 {
  r8 fis dis r8 b r8 fis' fis 
  | % 19
  dis r8 b r8 \grace f'8 fis8 f fis g 
  | % 20
  r8 g dis r8 cis2 
  | % 21
  r8 \grace cis8 dis8 cis8 dis e d r8 dis 
  | % 22
  r8 dis b r8 gis r8 dis' dis 
  | % 23
  b r8 gis r8 dis' dis d cis 
  | % 24
  r8 cis ais r8 fis2 }
  \alternative {
  { r8 \grace d'8 dis8 d dis e f r8 fis }
  { r1 \bar "||" }
  }
  \break
  \mark \default
  | % 34
  b,8 cis dis r8 b cis dis e 
  | % 35
  dis r8 b cis dis e fis dis 
  | % 36
  g r8 dis r8 dis d r8 cis4 r8 cis dis e cis dis e 
  | % 38
  dis r8 b r8 gis r8 dis' dis 
  | % 39
  b r8 gis r8 dis' dis d cis 
  | % 40
  r8 cis ais r8 fis2 
  | % 41
  r1 \bar "|." 
}

keys = \relative c' {
  R1*8 <fis b dis >1*2 <g' dis cis ais >1*2 <gis dis b >1*2 <fis cis ais >1*2 
  r1*2 <g ais, cis dis >1*2 <gis dis b >1*2 <fis cis ais >1*2 <fis, b dis >1*2 
  <g' dis cis ais >1*2 <gis dis b >1*2 <fis cis ais >1*2 <fis, b dis >1*2 
  <g' dis cis ais >1*2 <gis dis b >1*2 <fis cis ais >1*2 
}

banjo = \relative c'' {
  b8 ais b cis dis cis b ais 
  | % 3
  b ais b cis dis cis b cis 
  | % 4
  ais gis g ais dis, g ais cis 
  | % 5
  e dis d b ais gis g ais 
  | % 6
  dis d dis e dis b gis dis 
  | % 7
  dis' b gis' dis gis g gis b 
  | % 8
  ais gis fis f gis fis e cis 
  | % 9
  ais gis fis f gis fis gis ais 
  | % 10
  b ais b cis dis cis b ais 
  | % 11
  b ais b cis dis cis b cis 
  | % 12
  ais gis g ais dis, g ais cis 
  | % 13
  e dis d b ais gis g ais 
  | % 14
  dis d dis e dis b gis dis 
  | % 15
  dis' b gis' dis gis g gis b 
  | % 16
  ais gis fis f gis fis e cis 
  | % 17
  r1*3 ais8 gis g ais dis, g ais cis 
  | % 21
  e dis d b ais gis g ais 
  | % 22
  dis d dis e dis b gis dis 
  | % 23
  dis' b gis' dis gis g gis b 
  | % 24
  ais gis fis f gis fis e cis 
  | % 25
  ais gis fis f gis fis gis ais 
  | % 26
  b ais b cis dis cis b ais 
  | % 27
  b ais b cis dis cis b cis 
  | % 28
  ais gis g ais dis, g ais cis 
  | % 29
  e dis d b ais gis g ais 
  | % 30
  dis d dis e dis b gis dis 
  | % 31
  dis' b gis' dis gis g gis b 
  | % 32
  ais gis fis f gis fis e cis 
  | % 33
  ais gis fis f gis fis gis ais 
  | % 34
  b ais b cis dis cis b ais 
  | % 35
  b ais b cis dis cis b cis 
  | % 36
  ais gis g ais dis, g ais cis 
  | % 37
  e dis d b ais gis g ais 
  | % 38
  dis d dis e dis b gis dis 
  | % 39
  dis' b gis' dis gis g gis b 
  | % 40
  ais gis fis f gis fis e cis 
  | % 41
  ais gis fis f gis fis gis ais 
  | % 42
  
}

bass = \relative c {
  \clef bass
  b'4 r8 fis b4 dis8 fis, 
  | % 3
  b4 r8 fis b4 dis8 fis, 
  | % 4
  ais4 r8 g ais4 e'8 g, 
  | % 5
  ais4 r8 g ais4 e'8 g, 
  | % 6
  gis4 r8 dis gis4 dis'8 dis, 
  | % 7
  gis4 r8 dis gis4 dis'8 dis, 
  | % 8
  fis4 r8 e fis4 e'8 e, 
  | % 9
  fis4 r8 e fis4 e'8 e, 
  | % 10
  b'4 r8 fis b4 dis8 fis, 
  | % 11
  b4 r8 fis b4 dis8 fis, 
  | % 12
  ais4 r8 g ais4 e'8 g, 
  | % 13
  ais4 r8 g ais4 e'8 g, 
  | % 14
  gis4 r8 dis gis4 dis'8 dis, 
  | % 15
  gis4 r8 dis gis4 dis'8 dis, 
  | % 16
  fis4 r8 e fis4 e'8 e, 
  | % 17
  r1*3 ais4 r8 g ais4 e'8 g, 
  | % 21
  ais4 r8 g ais4 e'8 g, 
  | % 22
  gis4 r8 dis gis4 dis'8 dis, 
  | % 23
  gis4 r8 dis gis4 dis'8 dis, 
  | % 24
  fis4 r8 e fis4 e'8 e, 
  | % 25
  fis4 r8 e fis4 e'8 e, 
  | % 26
  b'4 r8 fis b4 dis8 fis, 
  | % 27
  b4 r8 fis b4 dis8 fis, 
  | % 28
  ais4 r8 g ais4 e'8 g, 
  | % 29
  ais4 r8 g ais4 e'8 g, 
  | % 30
  gis4 r8 dis gis4 dis'8 dis, 
  | % 31
  gis4 r8 dis gis4 dis'8 dis, 
  | % 32
  fis4 r8 e fis4 e'8 e, 
  | % 33
  fis4 r8 e fis4 e'8 e, 
  | % 34
  b'4 r8 fis b4 dis8 fis, 
  | % 35
  b4 r8 fis b4 dis8 fis, 
  | % 36
  ais4 r8 g ais4 e'8 g, 
  | % 37
  ais4 r8 g ais4 e'8 g, 
  | % 38
  gis4 r8 dis gis4 dis'8 dis, 
  | % 39
  gis4 r8 dis gis4 dis'8 dis, 
  | % 40
  fis4 r8 e fis4 e'8 e, 
  | % 41
  fis4 r8 e fis4 e'8 e, 
  | % 42
  
}

\score {
  <<
\new Staff { \transpose es c \melodija }
\new Staff { \keys }
\new Staff { \banjo }
\new Staff { \bass }
  >>
  \layout {}
  \midi {}
}
