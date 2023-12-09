%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

global = {
  \time 6/8
  \key a \minor
}

rightHand = \relative {
  \global
  \tupletOff
  e''16(^\sottoVoce ds e f a, gs  a b f e g f |
  c16 e f g a b  c e f g a c |
  b16 as b c f, e  f g! c, b e d |
  c16 e f g a b  \ottava 1 c e f g a c) |
  r16 g( d' c g e  d g e c g c,) \ottava 0 |
  r16 b'( fs' e b g  fs b g e b e, |
  f!16 e f a gs a  b a b ds g! f |
  b16 ds, f e d gs,  c as c b c d |
  
  \barNumberCheck 9
  e16 ds e f a,! gs  a b f e g f |
  c16 e f g a b  c e f g a c |
  b16 as b c f, e  f g! c, b e d |
  cs16 e f g a b  \ottava 1 cs e f g a e') |
  r16 a,( e' d a f  e a f d a d,) \ottava 0 |
  r16 c'( g' f c a  g c a f c f,) |
  r16 a'( e' d a f  e a f d a d,) |
  r16 c'( g' f c a  g c a f c f,) |
  
  \barNumberCheck 17
  r16 f'( c' bf f bf,) r f'( bf a f c) |
  r16 f( c' bf f bf,) r f'( bf a f c) |
  r16 e( b'! a e a,) r a( f' e c e,) |
  r16 \clef bass e( d' c a c,) r ds( b' a e c) |
  r16 f( b a f c  f a c \clef treble f a f |
  f'4.) <b,, d e gs> |
  r16 e( b' a e b) r c( g' f c gs) |
  r16 a( f' e c ds,) r \clef bass e( b' a f d) |
    
  \barNumberCheck 25
  r16 e(^\accelFine b' a ds, c) r e( b' a f c) |
  r16 f( b a fs c) r fs( b a f c) |
  r16 e( b' a e c \clef treble a' c e a c a~ |
  <a a'>4.) <e, a e'> |
  q2. |
  \bar "|."
}

leftHandUpper = \relative {
  \voiceThree 
  s8 d'!4-> s4. |
  s8 c4-> s4. |
  s8 gs'4-> s4. |
  s8 a4-> s4. |
  s8 e4-> s4. |
  s8 e4 s4. |
  s8 ds4 s4. |
  s2. |
  
  \barNumberCheck 9
  s8 d!4-> s4. |
  s8 c4-> s4. |
  s8 gs'4 s4. |
  s8 a4 s4. |
  s8 f4 s8 d' s |
  s8 f,4 s8 c' s |
  s8 f,4 s8 d' s |
  s2. |
  
  \barNumberCheck 17
}

leftHandLower = \relative {
  \voiceFour 
  a,8( d' f,  b d,) d\rest |
  a8( c' f,  a c,) d\rest |
  a8( gs'' b,  d f,) d\rest |
  a8( a'' c,  f f,) d\rest |
  as8( e'' g,  c c') d,,\rest |
  b8( e' g,  b b') d,,\rest |
  b8( ds' f,  a a') d,,\rest |
  \oneVoice 
  e8( d'! gs,  d' gs) r |
  
  \barNumberCheck 9
  \voiceFour 
  a,,8( d' f,  b d,) d\rest |
  a8( c' f,  a c,) d\rest |
  a8( gs'' b,  d f,) d\rest |
  a8( a'' cs,  g' a,) d,\rest |
  d8( f' a,  b d') d,,\rest |
  ef8( f' a,  c c') d,,\rest |
  d8( f' a,  b d') d,,\rest |
  \oneVoice 
  ef8( f' a,  c) r r |
  
  \barNumberCheck 17
  <d,, d'>8-> <f f'> <d d'>  <ef ef'>-> <f f'> <ef ef'> |
  <d d'>8-> <f f'> <d d'>  <ef ef'>-> <f f'> <ds ds'> |
  <e e'>8.-- <b b'>-- <c c'>-> <gs gs'>-- |
  <a a'>8.-- <e e'>-- <f f'>-- <e e'>-- |
  <ds ds'>2.~ |
  q4. <e e'> |
  e''8( e, a,)  d'( d, a) |
  c'8( e, a,)  b'( d,! a) |
  
  \barNumberCheck 25
  <a a'>8. <f f'> <a a'> <e e'> |
  <a a'>8. <ds, ds'> <a' a'> <d, d'> |
  <a a'>4. e''' |
  <a, e' c'>4. <a, e' a> |
  q2. |
}

leftHand = {
  \global
  \clef bass
  <<
    \new Voice \leftHandUpper
    \new Voice \leftHandLower
  >>
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  s2.\p |
  s2. * 3 |
  s2.\cresc |
  s2. |
  s2.\dim |
  s2. |
  
  \barNumberCheck 9
  s2.\p |
  s2. * 3 |
  s4. s8. s\cresc |
  s2. * 2 |
  s4 s2\cresc |
  
  \barNumberCheck 17
  s2.\f |
  s2. |
  s2.\ff |
  s4. s\< |
  s2.\sf |
  s4. s\sf |
  s4.\p\< s\< |
  s4.\< s\< |
  
  \barNumberCheck 25
  s4.\pp\< s\< |
  s4.\< s\< |
  s2.\pp |
  s2. * 2 |
}

% MIDI only 
pedal = {
  s4.\sd s\su\sd |
  \repeat unfold 5 { s4.\su\sd s\su\sd | }
  s8\su\sd s4\su\sd s4.\su\sd |
  s4.\su\sd s\su\sd |
  
  \barNumberCheck 9
  \repeat unfold 8 { s4.\su\sd s\su\sd | }
  
  \barNumberCheck 17
  s2.\su |
  s2. * 3 |
  s2.\sd |
  s4. s\su |
  s2. * 2 |
  
  \barNumberCheck 25
  s2. * 2 |
  s2.\sd |
  s2. * 2 <>\su |
}

tempi = {
  \set Score.tempoHideNote = ##t
  \textMark \markup \tempo-markup Allegro #2 #1 72-69
  \tempo 4. = 72
  s2. * 8 |
  
  \barNumberCheck 9
  s2. * 8 |
  
  \barNumberCheck 17
  s2. * 8 |
  
  \barNumberCheck 25
  \tempo 4. = 76
  s2. |
  \tempo 4. = 80
  s2. |
  s16 \tempo Presto 4. = 84 s s4 s4. |
  s2. * 2 |
}

forceBreaks = {
  s2. * 2 \break
  s2. * 3 \break
  s2. * 2 \break
  s2. * 3 \break
  s2. * 3 \pageBreak
  
  s2. * 3 \break
  s2. * 3 \break
  s2. * 3 \break
  s2. * 3 \break
}

preludeTwoNotes =
\score {
  \header {
    title = "Prelude 2"
    composer = "Alexander Scriabin"
    opus = "Opus 13, No. 2"
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

preludeTwoMidi =
\book {
  \bookOutputName "prelude-op13-no2"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \pedal \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \pedal \tempi >>
    >>
    \midi {}
  }
}
