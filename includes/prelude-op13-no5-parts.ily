%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

slurShapeA = \shape #'(
                        ((0 . -1.5) (2 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ) \etc

%%% Music %%%

global = {
  \time 6/8
  \key d \major
}

rightHand = \relative {
  \global
  r8 <e' cs'>( <fs d'>  <cs a'> <a fs'> <fs d'>) |
  r8 <e' cs'>( <fs d'>  <e cs'>4 <d b'>8) |
  r8 <b gs'>( <cs a'>)  r <a fs'>( <b gs'>) |
  r8 <b gs'>( <cs a'>  <b g'> <a fs'> <b g'> |
  <g e'>8) <fs' ds'>( <g e'>  <ds b'> <b g'> <g e'>) |
  r8 <as' fs'>( <b g'>  <a fs'>4 <g e'>8) |
  r8 <e cs'>( <fs d'>)  r <d b'>( <e cs'>) |
  r8 <e cs'>( <fs d'>  <a fs'> <fs d'> <e cs'>) |
  
  \barNumberCheck 9
  <d b'>8( <e cs'> <fs d'>  <e cs'> <b' gs'> <d, b'> |
  q8 <cs a'> <b gs'>  q <a fs'>) <a' fs'>-\slurShapeA ( |
  q8 <b gs'> <cs a'>  <b gs'>[ <fs' ds'> r16 <a, fs'>] |
  q8 <gs e'> <fs ds'>  q <e cs'>4) |
  r8 <fs d'!>( <e cs'>  <gs e'>4 <fs d'>8 |
  q4 <e cs'>8~  q <d b'> <e cs'> |
  <d b'>4 <cs a'>8  <a' fs'>4 <g e'>8 |
  <d' b'>4 <cs a'>8  <b g'> <a fs'> <g e'>) |
  
  \barNumberCheck 17
  r8 <e cs'>( <fs d'>  <cs a'> <a fs'> <fs d'>) |
  r8 <e' cs'>( <fs d'>  <e cs'>4 <d b'>8) |
  r8 <b gs'>( <cs a'>)  r <a fs'>( <b gs'>) |
  r8 <b gs'>( <cs a'>  <b g'> <a fs'> <b g'> |
  <g e'>8) <fs' ds'>( <g e'>  <ds b'> <b g'> <g e'>) |
  r8 <as' fs'>( <b g'>  <as fs'>4 <g e'>8) |
  r8 q( <fs d'>  <d' b'>4 <c a'>8) |
  r8 <e, c'>( <d b'>  <b' g'>4 <a fs'>8) |

  \barNumberCheck 25
  r8 <c, a'>( <b g'>  <a' fs'>4 <g e'>8 |
  q4 <fs d'>8)  r <f d'>( <d b'> |
  q4. <g, e'>) |
  r8 q( <d' b'>  <cs a'> <a' fs'> <g e'>) |
  r8 <e c'>( <fs d'>  <e c'> <c a'> <a fs'>) |
  r8 <a fs'>( <b g'>  <a fs'>4 <g e'>8) |
  r8 <e cs'>( <fs d'>)  r <d b'>( <e cs'>) |
  r8 <e cs'>( <fs d'>  <a fs'> <cs a'> <b g'> |
  
  \barNumberCheck 33
  <a fs'>) <e' c'>( <fs d'>  <e c'> <c a'> <a fs'>) |
  r8 <a fs'>( <b g'>  <a fs'>4 <g e'>8) |
  r8 <e cs'>( <fs d'>)  r <d b'>( <e cs'>) |
  r8 <e cs'>( <fs d'>)  r <d b'>( <e cs'>) |
  r8 <e cs'>( <fs d'>  <a fs'> <cs a'> <b g'> |
  <a fs'>8) <e' cs'>( <fs d'>  <a fs'> <cs a'> <b g'> |
  <a fs'>4.) <fs, d' fs> |
  R2. |
  \bar  "|."
}

leftHand = \relative {
  \global
  \clef bass
  d,8 a' a'  a,4 d8 |
  b8 a' a'  e, gs gs' |
  a,,8 e' e'  e,, e' e' |
  a,,8 e' e'  b, ds' b, |
  e,8 b' b'  b,4 e8 |
  e8 d' d'  a, cs cs' |
  d,,8 a' a'  a,, a' a' |
  d,,8 a' a' r4 r8 |
  
  \barNumberCheck 9
  gs,,8 fs' b  fs fs' r |
  es8 es, cs,  fs cs' cs' |
  ds,8 cs' fs  cs cs' r |
  bs8 bs, gs,  cs gs' cs |
  b,8 d'! a  fs a' r |
  e,8 d' gs,  e gs' r |
  a,,8 g'! e'  e, d' b' |
  \clef treble a,8 g' e'  r4 r8 |
  
  \barNumberCheck 17
  \clef bass d,,,8 a' a'  a,4 d8 |
  b8 a' a'  e, gs gs' |
  a,,8 e' e'  e,, e' e' |
  a,,8 e' e'  b, ds' b, |
  e,8 b' b'  b,4 e8 |
  e8 d'! g  fs, cs' as' |
  b8 d, b  d, c' fs |
  g8 b, g  b, a' ds |
  
  \barNumberCheck 25
  e8 g, e  g, e' bf' |
  a8 a, d  gs a, f' |
  g8 a, e'  d' e, a, |
  a,8 e' a  g' cs a, |
  d,8 a' fs'  a, d d' |
  d,,8 g e'  a, cs'! r |
  d,,4 a'8  a,4 a'8 |
  d,4 a'8 r4 r8 |
  
  \barNumberCheck 33
  d,8 a' fs'  a, d d' |
  d,,8 g e'  a, cs'! r |
  d,,4 a'8  a,4 a'8 |
  d,4 a'8  a,4 a'8 |
  d,4.  a'4 a8 |
  d4.~ d4 a'8 |
  d4. <d,, a' d> |
  R2. |
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  s8\p s-\tweak Y-offset 0.5 \< s\! s4.\> <>\! |
  s8 s-\tweak Y-offset 1.5 \< s\! s4.-\tweak Y-offset 1 \> <>\! |
  s8 s\< s\! s s\< s\! |
  s2. |
  s8 s-\tweak Y-offset -2 \< s\! s4.-\tweak Y-offset -2 \> <>\! |
  s8 s\< s\! s4.\> <>\! |
  s8 s\< s\! s s\< s\! |
  s2. |
  
  \barNumberCheck 9
  s8 s4\< s4. <>\! |
  s8 s4\> s4. |
  s2.-\tweak Y-offset0.51 \pp-\tweak Y-offset 1 \< <>\! |
  s4 s8-\tweak Y-offset -1 \> s4. <>\! |
  s4. s\> |
  s4\> s8\! s s4\< |
  s4.\> s\> |
  s2.\> <>\! |
  
  \barNumberCheck 17
  s8 s\< s\! s4.-\tweak Y-offset -1 \> <>\! |
  s2. * 5 |
  s4 s8\cresc s4. |
  s2. |
  
  \barNumberCheck 25
  s4. s8 s4\> |
  s4 s8\! s s4\dim |
  s2. |
  \override Hairpin.Y-offset = 0.5
  s8 s8\< s\! s4.\> |
  s4-\tweak Y-offset 0.5 \pp\< s8\! s4.\> <>\! |
  \revert Hairpin.Y-offset
  s8 s\< s\! s4.\> <>\! |
  s8 s\< s\! s s\< s\! |
  s4. s4\< s8\> |
  
  \barNumberCheck 33
  s16 s\! s8\< s\! s4.\> <>\!
  s8 s\< s\! s4.\> <>\! |
  s8 s\< s\! s s\< s\! |
  s8 s\< s\! s s\< s\! |
  s2. * 4 |
}

% MIDI only 
pedal = {
  s4.\sd s\su\sd |
  \repeat unfold 7 { s4.\su\sd s\su\sd | } 
  
  \barNumberCheck 9
  \repeat unfold 8 { s4.\su\sd s\su\sd | } 
  
  \barNumberCheck 17
  \repeat unfold 8 { s4.\su\sd s\su\sd | } 
  
  \barNumberCheck 25
  s4.\su\sd s\su\sd |
  s4.\su\sd s\su\sd |
  s2.\su\sd |
  s2.\su\sd |
  s2.\su\sd |
  s4.\su\sd s\su\sd |
  s4.\su\sd s\su\sd |
  s4.\su\sd s\su\sd |
  
  \barNumberCheck 33
  s2.\su\sd |
  s2.\su\sd |
  s4.\su\sd s\su\sd |
  s4.\su\sd s\su\sd |
  s2.\su\sd |
  s2.\su\sd |
  s2. <>\su |
  s2. |
}

tempi = {
  \set Score.tempoHideNote = ##t
  \textMark \markup \tempo-markup Allegro #2 #1 116-120
  \tempo 4. = 116
  s2. * 8 |
  
  \barNumberCheck 9
  s2. * 6 |
  \tempo 4. = 108
  s2. |
  \tempo 4. = 100
  s2. |
  
  \barNumberCheck 17
  \tempo 4. = 116
  s2. * 8 |
  
  \barNumberCheck 25
  s2. * 8 |
  
  \barNumberCheck 33
  s2. * 5 |
  \tempo 4. = 108
  s2. |
  \tempo 4. = 100
  s2. * 2 |
}

forceBreaks = {
  s2. * 3 \break
  s2. * 4 \break
  s2. * 4 \break
  s2. * 4 \break
  s2. * 4 \pageBreak
  
  s2. * 4 \break
  s2. * 4 \break
  s2. * 4 \break
  s2. * 4 \break
}

preludeFiveNotes =
\score {
  \header {
    title = "Prelude 5"
    composer = "Alexander Scriabin"
    opus = "Opus 13, No. 5"
  }
  \keepWithTag layout  
  \new PianoStaff <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \tempi
    \new Devnull \forceBreaks
  >>
  \layout {}
}

\include "articulate.ly"

preludeFiveMidi =
\book {
  \bookOutputName "prelude-op13-no5"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \pedal \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \pedal \tempi >>
    >>
    \midi {}
  }
}
