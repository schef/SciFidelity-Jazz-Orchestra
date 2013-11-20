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
    title =     \markup { \fontsize #+4   "ZIMA"}
    poet =      \markup { \fontsize #+1   "Balad | Walking Swing" }
    composer =  \markup { \fontsize #+1   "Stjepan Horvat"}
}

<<
\chords {
d1:m7 g:9 c:maj a:m7
d1:m7 g:9 c:maj es:7
d1:7 des:7 c:7 a:7
d1:m7 g:9 c:maj 
}
\relative c' {
a''2 d, ~ |
d2 e4 f |
g1 |
c,1 | \break
a'2 d, ~ |
d2 e4 f |
g1 |
r1 | \break
a2 d, ~ |
d2 e4 f |
g1 |
cis,2 d4 e | \break
f2 c2 |
b2 c4 d |
c1 |
r1 | \bar "|."
}
>>
