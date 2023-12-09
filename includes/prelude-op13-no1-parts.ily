%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

forceHShiftA = \once \override NoteColumn.force-hshift = 2.3
forceHShiftB = \once \override NoteColumn.force-hshift = 1.5

slurShapeA = \shape #'(
                        ((0 . 2.5) (0 . 1) (0 . 0) (0 . 0))
                        ((0 . -1) (0 . -1) (0 . 0) (0 . 0))
                        ) \etc
slurShapeB = \shape #'((0 . 2) (0 . 0) (0 . 0) (0 . 2)) \etc
slurShapeC = \shape #'((0 . 2.5) (0 . 2) (0 . 0.5) (0 . 0)) \etc
slurShapeD = \shape #'((0 . 2.5) (0 . 2) (0 . 0.5) (0 . 0)) \etc
slurShapeE = \shape #'((0 . 2) (0 . 2) (0 . 0.5) (0 . 0)) \etc

%%% Music %%%

global = {
  \time 3/4
  \key c \major
  \eighthsInTwos.34
}

rightHandUpper = \relative {
  <a d f>4^( <g b e> <e g c> |
  \voiceOne d'8. e16 f4 e8. f16 |
  \oneVoice <a, c a'>4 <b e g> <g c e> |
  \voiceOne <f c' d f>8. <c' e g>16_~ <c f a>4 <g b g'>) |
  \oneVoice r4 <g c g'>-\slurShapeA ( <a c g' a> |
  <b d g b>4 <c f a c> <d f a d> |
  <e a c e>4 <f a c f> <a c f a> |
  <c f c'>4 <d a' c d> <g,, b d>) |
  
  \barNumberCheck 9
  <a d f>4^( <g b e> <e g c> |
  \voiceOne d'8. e16 f4 e8 f |
  \oneVoice <a, c a'>4 <b e g> <g c e> |
  \voiceOne f'8. <e g>16 a4 <f, b g'>4) |
  \oneVoice r4 \clef bass <c f c'>( <d f c' d> |
  <e g c e>4 <f bf d f> <g bf d g> |
  \clef treble <a d f a>4 <bf d f bf> <d f bf d> |
  <f bf d f>4 <d e gs e'> <c e a>) |
  
  \barNumberCheck 17
  \voiceOne bf'4..( bf16 a8. g16 |
  \oneVoice <bf, g' cs>4 <bf g' d'> <bf g' e'> |
  <e g cs>2 \voiceOne bf'8. bf16 |
  bf2 bf8) r |
  f4..-\slurShapeB ( f16 e8. d16 |
  \oneVoice <f, d' gs>4 <f d' a'> <f d' b'> |
  <f c' f c'>4 <f c' f> <e c' e> |
  \voiceOne f'8. c16 c4 \oneVoice <f, b d>8) r |
  
  \barNumberCheck 25
  <a' d f>4( <g b e> <e g c> |
  <f c' d>8. <a c e>16_~ <a d f>4 <g b e>8. f'16 |
  <c f a>4 <b e g> <g c e> |
  <f c' d f>8. <c' e g>16_~ <c f a>4 <b e g>8. d16) |
  \tuplet 3/2 { r8 \voiceOne c,( g' } \oneVoice <g c g'>4) \tuplet 3/2 { 
    \voiceOne g8( a <a c g' a>) } |
  \tupletOff
  \tuplet 3/2 { \oneVoice r8 \voiceOne g( b } \oneVoice <c f a c>4) 
    \tuplet 3/2 { \voiceOne <f, a>4-\slurShapeC ( \hideNoteHead d''8) } |
  \tuplet 3/2 { \oneVoice r8 \voiceOne <e,, a c>4-\slurShapeD ( } \oneVoice
    <f' a c f>4) \tuplet 3/2 { \voiceOne <c f>4-\slurShapeE ( \hideNoteHead 
    a''8) } |
  \oneVoice <c,, f>8( c' \ottava 1 <c f c'>8.. <g g'>32 <g c g'>4) \ottava 0 |
  
  \barNumberCheck 33
  \voiceOne bf,4..( bf16 a8. g16 |
  <af d!>4 f8. g16 af8. bf16 |
  f'4 cs d |
  \oneVoice <e, c' e>2.) |
  \voiceOne bf'4..( bf16 a8. g16 |
  <af d>4 f8. g16 af8. bf16 |
  f'4 cs d |
  \oneVoice <e, c' e>2.) |
  
  \barNumberCheck 41
  \voiceOne f4( cs d |
  ds2 e4 |
  \oneVoice <e, g c e>2.)\fermata |
  \bar "|."
}

rightHandLower = \relative {
  s2. |
  \voiceTwo \forceHShiftA <f c'>4 q b |
  s2. |
  s2 \forceHShiftB e8. d16 |
  s2. * 4 |
  
  \barNumberCheck 9
  s2. |
  <f, c'>8. <a c>16~ <a d>4 b |
  s2. |
  <f c'>8. c'16~ <c f>4 e8 d |
  s2. * 4 |
  
  \barNumberCheck 17
  <bf d>2 q4 |
  s2. |
  s2 <cs e>4 |
  <d f>4 <cs g'> <d f>8 r |
  <f, a>2 q4 |
  s2. * 2 |
  q2 s4 |
  
  \barNumberCheck 25
  s2. * 4 |
  \tupletOff
  \tuplet 3/2 { s8 <g c>4 } s4 <a c g'> |
  \tuplet 3/2 { 
    s8 <b d g>4 s4. d8 d' <d f a d> |
    s8 e, e' s4. a,8 a' <a c f a> |
  }
  s2. |
  
  \barNumberCheck 33
  <bf,, e>2 e4~ |
  e8. f16 \forceHShiftA f2 |
  <f b!>4 q2 |
  s2. |
  <bf, e>2 e4~ |
  e8. f16 \forceHShiftA f2 |
  <f b!>4 q2 |
  s2. |
  
  \barNumberCheck 41
  <f, b>4 q2~ |
  q2 <e b'>4 |
  s2. |
}

rightHand = \relative {
  \global
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  s2. * 8 |
  
  \barNumberCheck 9
  s2. * 8 |
  
  \barNumberCheck 17
  s2. * 8 |
  
  \barNumberCheck 25
  \voiceThree <a d f>4 <g b e> <e g c> |
  <f c' d>8. <a c e>16~ <a d f>4 <g b e>8. f'16 |
  <c f a>4 <b e g> <g c e> |
  <f c' d f>8. <c' e g>16~ <c f a>4 <b e g>8. d16 |
  s2. * 4 |
  
  \barNumberCheck 33
}

leftHandLower = \relative {
  <f,, f'>4 <g g'> <a a'> |
  q4 <d, d'> <g g'> |
  <f f'> <g g'> <a a'> |
  q4 <d, d'> <g g'> |
  <f' f'>4.. q16 <e e'>8. <d d'>16 |
  <g g'>4 <f f'>8. <e e'>16 <d d'>8. <c c'>16 |
  <a' a'>4 <f f'>8. <d d'>16 <c c'>8. <a a'>16 |
  <f'' f'>8. <d,, d'>16 <f'' f'>4 <g,, g'> |
  
  \barNumberCheck 9
  <f f'>4 <g g'> <a a'> |
  q4 <d, d'> <g g'> |
  <f f'> <g g'> <a a'> |
  q4 <d, d'> <g g'> |
  <bf bf'>4.. q16 <a a'>8. <g g'>16 |
  <c c'>4 <bf bf'>8. <a a'>16 <g g'>8. <f f'>16 |
  <d' d'>4 <bf bf'>8. <g g'>16 <f f'>8. <d d'>16 |
  <bf'' bf'>8. <e,, e'>16 <b'' b'>4 \acciaccatura { <a, a'>8 } <a' a'>4 |
  
  \barNumberCheck 17
  q4 <g g'> <f f'> |
  <e e'>4.. q16 <d d'>8. <cs cs'>16 |
  <bf' bf'>4 <a a'>8 <g g'> \tuplet 3/2 { r8 <f f'>-.( <bf bf'>-.) } |
  \tupletOff
  \tuplet 3/2 { r8 <e, e'>-.( <bf' bf'>-.) r <d, d'>-.( <bf' bf'>-.) r <a, a'>
    <e' e'>~ } |
  q4 <d d'> <c c'> |
  <b b'>4.. q16 <a a'>8. <gs gs'>16 |
  <a a'>4 <a' a'> \tupletOn \tuplet 3/2 { r8 q-.( <d, d'>-.) } |
  \tupletOff
  \tuplet 3/2 { 
    r8 <a a'>-.( <d d'>-.) r <g, g'>-.( <d' d'>-.) r <f, f'>-.( <d' d'>-.) |
    
    \barNumberCheck 25
    \voiceFour 
    r8 <g, g'>-.( <e' e'>-.) r <a, a'>-.( <e' e'>-.) r <a, a'>-.( <d d'>-.) |
    r8 <d, d'>-.( <a'' a'>-.) r <g, g'>-.( <g' g'>-.) r <f, f'>-.( <d' d'>-.) |
    r8 <g, g'>-.( <e' e'>-.) r <a, a'>-.( <e' e'>-.) r <a, a'>-.( <d d'>-.) |
    r8 <d, d'>-.( <a'' a'>-.) r <g, g'>-.( <g' g'>-.) r <g g'>-.( <g' g'>-.) |
  }
  \oneVoice <f, f'>4.. q16 <e e'>8. <d d'>16 |
  <g g'>4 <f f'>8. <e e'>16 <d d'>8. <c c'>16 |
  <a' a'>4 <f f'>8. <d d'>16 <c c'>8. <a a'>16 |
  <c' c'>8. <f,, f'>16 <d'' d'>8 <c,, c'> <e'' c' e>4 |
  
  \barNumberCheck 33
  <c, c'>4 <df' df'> <c c'> |
  <b! b'!>2~ q8 <bf bf'> |
  \tuplet 3/2 { <af af'>8( <c, c'> <g' g'> } <af af'>2~ |
  q4 <g g'> <c, c'>) |
  \tuplet 3/2 { c8( g' c } g'8. c,16_~ <c bf'>4) |
  \tuplet 3/2 { c,8( f c' } af'8. d,16 b'!4) |
  \tuplet 3/2 { <af, af'>8( <c, c'> <g' g'> } <af af'>2~ |
  q4 <g g'> <c, c'>) |
  
  \barNumberCheck 41
  \tuplet 3/2 { <af' af'>8( <c, c'> <g' g'> } <af af'>2~ |
  q2 <g g'>4 |
  <c, g' c>2.)_\fermata |
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
  \override TextScript.Y-offset = -0.5
  s4\p s4\< s\! |
  s2\> s4\! |
  s2\< s4\! |
  s4\> s2\! |
  s2. |
  s2.-\tweak Y-offset 2 \cresc |
  s2. |
  s4-\tweak Y-offset 3 \f s-\tweak Y-offset 2 \> s\! |
  
  \barNumberCheck 9
  s2\p\< s4\! |
  s2-\tweak Y-offset -0.5 \> s4\! |
  s2\< s4\! |
  s2\> s4\! |
  s4 s2-\tweak Y-offset 2.5 \cresc |
  s2. * 2 |
  s2\f s4\> |
  
  \barNumberCheck 17
  s2.-\tweak Y-offset -1.5 \p |
  s2.\< |
  s2\> s4\! |
  s2.^\sottoVoce |
  s2. |
  s2 s4-\tweak extra-offset #'(0 . -1) \cresc |
  s2. |
  s8 s\cresc s2 |
  
  \barNumberCheck 25
  s8\f s\< s2 |
  s4\> s\! s |
  s4 s4.\< s8\! |
  s4\> s2\! |
  s2.-\tweak X-offset 0 -\tweak Y-offset -2 \ff |
  s2. * 3 |
  
  \barNumberCheck 33
  s2.\f |
  s2 s4\dim |
  s2. * 2 |
  s2.\p |
  s2. * 3 |
  
  \barNumberCheck 41
  s2.\pp |
  s2. * 2 |
}

% MIDI only 
pedal = {
  s4\sd s\su\sd s\su\sd
  \repeat unfold 6 { s4\su\sd s\su\sd s\su\sd | }
  s8.\su\sd s16\su\sd s4 s\su\sd |
  
  \barNumberCheck 9
  \repeat unfold 7 { s4\su\sd s\su\sd s\su\sd | }
  s8.\su\sd s16\su\sd s4 \grace { s8\su\sd } s4 |
  
  \barNumberCheck 17
  s4\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s2. * 2 \su |
  s4\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s2. * 2 \su |
  
  \barNumberCheck 25
  s2. * 4 |
  s2\sd s4\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s8.\su\sd s16\su\sd s8 s\su\sd s4 |
  
  \barNumberCheck 33
  s4\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s4\su s\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s4\su\sd s8. s16\su\sd s4 |
  s2\su\sd s4\su\sd |
  s4\su s\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  
  \barNumberCheck 41
  s4\su s\sd s\su\sd |
  s2\su\sd s4\su\sd |
  s2.\su\sd <>\su |
}

tempi = {
  \set Score.tempoHideNote = ##t
  \textMark \markup \tempo-markup Maestoso #2 #0 66-63
  \tempo 4 = 66
  s2. * 3 |
  s2 \tempo 4 = 58 s4 |
  \tempo 4 = 66
  s2. * 3 |
  \tempo 4 = 58
  s2 \tempo 4 = 66 s4 |
  
  \barNumberCheck 9
  s2. * 7 |
  \tempo 4 = 58 
  s2. | 
  
  \barNumberCheck 17
  \tempo 4 = 66
  s2. * 8 |
  
  \barNumberCheck 25
  s2. * 7 |
  \tempo 4 = 58 
  s2. |
  
  \barNumberCheck 33
  \tempo 4 = 66
  s2. * 8 |
  
  \barNumberCheck 41
  s2. |
  \tempo 4 = 58
  s2. |
  s2. |
}

forceBreaks = {
  s2. * 5 \break
  s2. * 5 \break
  s2. * 5 \break
  s2. * 5 \break
  s2. * 4 \pageBreak
  
  s2. * 3 \break
  s2. * 3 \break
  s2. * 4 \break
  s2. * 4 \break
}

preludeOneNotes =
\score {
  \header {
    title = "Prelude 1"
    composer = "Alexander Scriabin"
    opus = "Opus 13, No. 1"
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

preludeOneMidi =
\book {
  \bookOutputName "prelude-op13-no1"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \pedal \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \pedal \tempi >>
    >>
    \midi {}
  }
}
