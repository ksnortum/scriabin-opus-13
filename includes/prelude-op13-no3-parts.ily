%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

slurShapeA = \shape #'(
                        ((0 . 0) (0 . 0) (0 . -2) (0 . -0.75))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ) \etc
slurShapeB = \shape #'(
                        ((0 . 0) (0 . 0) (0 . -1) (0 . -1))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ) \etc

%%% Music %%%

global = {
  \time 3/4
  \key g \major
}

rightHandUpper = \relative {
  \partial 4*2/3 r4*2/3 |
  <d' g d'>4( <g a> <fs b> |
  <g d'>4 <g b g'> <g e'> |
  <d g d'>4 <g a> <fs b> |
  <d g d'>4 <g b g'> <g d' fs> |
  \voiceOne e'4 c4.-> b8 |
  \oneVoice <e, g a>4 <g c fs> <g c e> |
  \voiceOne d'2 d4 |
  d2.) |
  
  \barNumberCheck 9
  g4( ef4. d8 |
  \oneVoice <g, bf c>4 <bf ef a> <bf ef g> |
  \voiceOne f'2 f4 |
  f2.) |
  f4( df4. c8 |
  \oneVoice <f, af bf>4 <af df g> <af df f> |
  \voiceOne ef'2 ef4 |
  ef2) cs4( |
  
  \barNumberCheck 17
  d2 d4 |
  d2) \oneVoice r4 |
  r4 r <b, g' b> |
  q2.~ |
  q2. |
  \bar "|."
}

rightHandLower = \relative {
  \partial 4*2/3 s4*2/3
  s2. * 4 |
  \voiceTwo <e' g>4 e <e g> |
  s2. |
  fs4 <d fs> <c fs> |
  <b g'>2 <g' b>4 |
  
  \barNumberCheck 9
  <g bf>4 g <g bf> |
  s2. |
  a4 <f a> <ef a> |
  <d bf'>2 <f bf>4 |
  <f af>4 f <f af> |
  s2. |
  g4 <ef g> <df g> |
  <c af'>4 q <ef g> |
  
  \barNumberCheck 17
  <d g>4 q <c! fs> |
  <b g'>2 s4 |
  s2. * 2 |
}

rightHand = \relative {
  \global
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHand = \relative {
  \global
  \clef bass
  \partial 4*2/3 d8*2/3( g |
  \tupletOff
  \tuplet 3/2 { a8 d, a' } d4~ \tuplet 3/2 { d8 d, c' |
  b8 d, g  d' e d  b d, g |
  a d, a' } d4~ \tuplet 3/2 { d8 d, c' |
  b8 d, g  d' e d  b e, b' |
  c8 b a_~ } <a g'>4->_~ \tuplet 3/2 { a8 e b' |
  c8 b a  a' e a,  e'4 a,8 | }
  b4 \tupletOn \tupletUp \tuplet 3/2 { b4 b8 } \tupletOff \tuplet 3/2 { b a g |
  g8 d a' } g4) \tuplet 3/2 { r8 g-\slurShapeA ( d' |
  
  \barNumberCheck 9
  ef8 d c_~ } <c bf'>4_~ \tuplet 3/2 { c8 g d' |
  ef8 d c  c' g c, g'4 c,8 } |
  d4. d8 \tuplet 3/2 { d c bf |
  bf f c' } bf4) \tuplet 3/2 { r8 f-\slurShapeB ( c' | 
  df8 c bf_~ } <bf af'>4_~ \tuplet 3/2 { bf8 f c'
  df8 c bf  bf' f bf,  f'4 bf,8 } |
  c4. c8 \tuplet 3/2 { c8 bf af |
  af8 ef bf' } af4) as( |
  
  \barNumberCheck 17
  b4. b8 \tuplet 3/2 { b a! g |
  g8 d a'  g d g  d' b g' } |
  d'2)\fermata <g,,, d' g>4 |
  q2.~ |
  q2. |
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \override TextScript.Y-offset = -0.5
  \partial 4*2/3 \tag layout { s4*2/3 } \tag midi { s4*2/3\pp }  |
  s2.^\ppDolce |
  s4.\< s\> <>\! |
  s2. |
  s2 s16 s8.\cresc |
  s2. * 2 |
  s4\mf\> s2\! |
  s2\pp \tuplet 3/2 { s8 s4\cresc } |
  
  \barNumberCheck 9
  s2. * 2 |
  s2.-\tweak Y-offset 1 \mf |
  s2 s4-\tweak Y-offset -1 \pp |
  s2. |
  s4 s2-\tweak Y-offset 1 \< |
  s2.\> |
  s2-\tweak Y-offset -2 \> s4-\tweak Y-offset -2 \ppp |
  
  \barNumberCheck 17
  s2. |
  s16 s8.-\tweak extra-offset #'(0 . -4) ^\dolciss s2 |
  s2 s4-\tweak Y-offset -2\ppp |
  s2. * 2 |
}

% MIDI only 
pedal = {
  \partial 4*2/3 s4*2/3\sd |
  s2 s4\su\sd |
  s2\su\sd s4\su\sd |
  s2\su\sd s4\su\sd |
  s2\su\sd s4\su\sd |
  s4\su\sd s\su\sd s\su\sd | 
  s4\su\sd s\su\sd s\su\sd | 
  s2\su\sd s4\su\sd |
  s4\su\sd s\su\sd s\su\sd | 
  
  \barNumberCheck 9
  s4\su\sd s\su\sd s\su\sd | 
  s4\su\sd s\su\sd s\su\sd | 
  s2\su\sd s4\su\sd |
  s4\su\sd s\su\sd s\su\sd | 
  s4\su\sd s\su\sd s\su\sd | 
  s4\su\sd s\su\sd s\su\sd | 
  s2\su\sd s4\su\sd |
  s4\su\sd s\su\sd s\su\sd | 
  
  \barNumberCheck 17
  s2\su\sd s4\su\sd |
  s2.\su\sd |
  s2. * 3 <>\su |
}

tempi = {
  \set Score.tempoHideNote = ##t
  \textMark \markup \tempo-markup Andante #2 #0 52-54-56
  \tempo 4 = 54
  \partial 4*2/3 s4*2/3 |
  s2. * 8 |
  
  \barNumberCheck 9
  s2. * 7 |
  s4 \tempo 4 = 46 s2 |
  
  \barNumberCheck 17
  \tempo 4 = 54
  s2. |
  \tempo 4 = 50
  s2 \tempo 4 = 46 s4 |
  s2. * 3 |
}

forceBreaks = {
  \partial 4*2/3 s4*2/3 |
  s2. * 3 \break
  s2. * 4 \break
  s2. * 4 \break
  s2. * 4 \break
}

preludeThreeNotes =
\score {
  \header {
    title = "Prelude 3"
    composer = "Alexander Scriabin"
    opus = "Opus 13, No. 3"
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

preludeThreeMidi =
\book {
  \bookOutputName "prelude-op13-no3"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \pedal \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \pedal \tempi >>
    >>
    \midi {}
  }
}
