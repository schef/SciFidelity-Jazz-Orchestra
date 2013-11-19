\version "2.14.2"

\include "/AccordsJazzDefs.ly"

%-------------------------- Titres et entetes
myStaffSize = #30
#(set-global-staff-size myStaffSize)
#(set-default-paper-size "a4")
\paper {
    #(define fonts  (make-pango-font-tree "Dom Casual" "DejaVu Sans Condensed" "lilyjazzchord" (/ myStaffSize 20)))
    indent = 0
    system-system-spacing #'basic-distance = #20
    markup-system-spacing #'padding = #3
}

\header {
    title =     \markup { \fontsize #+4   "RAZMIŠLJANJA"}
    subtitle = \markup { \fontsize #+4   "(Thinkings)"}
    poet =      \markup { \fontsize #+1   "Walking Swing" }
    composer =  \markup { \fontsize #+1   "Stjepan Horvat"}
}

<<
\chords {
\semiGermanChords
d1:maj7.3- g:11+ c:maj c2:maj cis:dim
d1:maj7.3- g:11+ c:maj c2:maj cis:dim
d1:maj7.3- g:11+ bes:7.5+ a:7.5+
as1:7.5+ g4:7.5+ g:7 r2 c2:maj7 b:7 bes:7 a:11+
}
\relative c' {
f2 e8 f e d ~ |
d2 e4 f |
g4. c,8 ~ c2 |
r1 | \break
f2 e8 f e d ~ |
d2 bes'8 as g f |
g1 |
r1 | \break
a4 g f( e8 d) |
r2 e4 f |
g4. c,8 ~ c2 |
r1 | \break
f4. c8 ~ c2 |
r2 b8 g d' c |
r1 |
r1 | \bar "|."
}
>>
