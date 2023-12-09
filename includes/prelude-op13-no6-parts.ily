%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

forceHShiftA = \once \override NoteColumn.force-hshift = 1.3
forceHShiftB = \once \override NoteColumn.force-hshift = 1.35
forceHShiftC = \once \override NoteColumn.force-hshift = 1.4
forceHShiftD = \once \override NoteColumn.force-hshift = 2.3
forceHShiftE = \once \override NoteColumn.force-hshift = 0.3
forceHShiftF = \once \override NoteColumn.force-hshift = -0.3

beamPositionsA = \tweak Beam.positions #'(-7 . -7.5) \etc

slurShapeA = \shape #'(
                        ((0 . 0) (0 . 1.5) (0 . 0.5) (0 . -4))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ) \etc
slurShapeB = -\tweak positions #'(3 . 0) \etc
slurShapeC = -\tweak positions #'(2 . 0) \etc
slurShapeD = \shape #'((0.5 . 2.5) (0.5 . 2) (-1 . 2) (0 . 0)) \etc

spaceAfterTie = \once \override Tie.minimum-length-after-break = 9

%%% Music %%%

global = {
  \time 6/8
  \key b \minor
  \set Staff.extraNatural = ##f
}

rightHandUpper = \relative {
  \set Score.tempoHideNote = ##t
  \textMark \markup \tempo-markup Presto #2 #1 104-108
  \tempo 4. = 104
  \partial 8 r8 |
  <d' d'>8-.( <d cs'>-. <d b'>-.) <d a'>4-> <fs, b fs'>8-> |
  q4.~ q4 r8 |
  <e' e'>8-.( <e d'>-. <e c'>-.) <e b'>4-> <g, c g'>8-> |
  q4.~ <g b g'>4 \spaceAfterTie <e as e'>8~ |
  q4 <e' as e'>8-.( <e b' e>-.[ <e as e'>-.]) <e, as e'>~ |
  q4 <as' e' as>8-.( <b e as>-. <as e' as>-.) r8 |
  <b es b'>4-> r8 <cs g' cs>4-> r8 |
  <cs fs cs'>4-> r8 r4 r8 |
  
  \barNumberCheck 9
  <d, d'>8-.( <d cs'>-. <d b'>-.) <d a'>4-> <fs, b fs'>8 |
  q4.--~^\ten q |
  <d' d'>8-.( <d cs'>-. <d b'>-.) <d a'>4-> <fs, a fs'>8
  q4.~ <fs gs fs'>4 \clef bass <a, fs' a>8~ |
  q4 \clef treble <a' fs' a>8^.->^(  <b fs' a>^.->[ <a fs' a>^.->]) \clef bass
    <a, fs' a>~ |
  q4 \clef treble <cs' fs cs'>8^.->^( <d fs cs'>^.->[ <cs fs cs'>^.->]) r |
  <d fs b d>4 r8 <cs es cs'>4 r8 |
  <cs fs cs'>4 r8 r4 r8 |
  
  \barNumberCheck 17
  \clef bass \voiceOne <a ds>4. s4 fs8 |
  gs8-. a-. fs-.  gs-. a-. fs-. |
  \clef treble \oneVoice <gs gs'>8 q q~ q <as as'> <b b'!> |
  <bs bs'>8 <cs cs'> <ds ds'> <e gs e'>4 r8 |
  <e e'>8 <ds ds'> <cs cs'>  <b e b'>4 <gs gs'>8 |
  <gs gs'>4. <fss fss'> |
  <ds' ds'>8 q q~ q <es es'> <fs fs'!> |
  \voiceTwo <fss fss'>8 <gs gs'> <as as'> \oneVoice <b e b'>4 r8 |
  
  \barNumberCheck 25
  \voiceOne <e, e'>8-- <d d'>-- <c c'>--  <b b'>4-> <e, e'>8 |
  \oneVoice q4.~ q4 \voiceOne r8 |
  \voiceOne <e' e'>8-- <d d'>-- <cs! cs'!>-- <b b'>4-> <fs fs'>8 |
  \oneVoice q4.~ q4 \voiceOne r8 |
  <d' d'>8 <cs cs'> <b b'> <g g'>4 \oneVoice r8 |
  <d' d'>8 <cs cs'> <b b'>  <fs fs'>4 r8 |
  <d' d'>8 <cs cs'> <b b'>  <es, es'>4 r8 |
  <d' d'>8 <cs cs'> <b b'>  <a' a'>4 <g g'>8 |
  
  \barNumberCheck 33
  <fs as cs fs>4 r8 <as, cs e as>4-\slurShapeA ( r8 |
  <b d b'>4 r8 <es, gs b es>4 r8 |
  <fs as fs'>4) r8  <as cs e! as>4( r8 |
  <b d b'>4 r8 <es, gs b es>4 r8 |
  <fs as fs'>4) r8 q4( r8 |
  <g b fs'>4 r8 <gs bs fs'>4 r8 |
  <a cs fs>2. |
  <as cs fs>4. <as e'! fs>) |
  
  \barNumberCheck 41
  <d d'>8-.( <d cs'>-. <d b'>-.) <d a'>4-> <fs, b fs'>8-> |
  q4. r4 r8 |
  <e' e'>8-.( <e d'>-. <e c'>-.) <e b'>4-> <g, c g'>8-> |
  q4.->~ <g b g'>4 <e as e'>8~ |
  q4 <e' as e'>8-.( <e b' e>-.[ <e as e'>-.]) <e, as e'>~ |
  q4 <as' e' as>8-.( <b e as>-. <as e' as>-.) r8 |
  <b f' b>4 r8 <g' b g'>4 r8 |
  <g c g'>4 r8 <g,, c g'>4 r8 |
  
  \barNumberCheck 49
  <f g b g'>4 r8 <g' b g'>4 r8 |
  <g c g'>4 r8 <g, c g'>4 r8 |
  <f g b g'>4 r8 <es' b' es>4 r8 |
  <fs b fs'>4 r8 <fs, b fs'>4 r8 |
  <e b' fs'>4 r8 <e' b' fs'>4 r8 |
  <e, as fs'>4 r8 <e' as fs'>4 r8 |
  \voiceOne <c c'> <c b'> <c a'>  <c g'>4 <g e'>8 |
  \oneVoice <g c e>4.->~ q4 a!8 |
  
  \barNumberCheck 57
  \voiceOne <f e'>4. <f ds'> |
  <e e'>4.~ e'8 fs e |
  <c c'> <c b'> <c a'>  <c g'>4 <g e'>8 |
  \oneVoice <g c e>4.->~ q4 a!8 |
  \voiceOne <f e'>4. <f ds'> |
  <e e'>4. <fs fs'>4 <e e'>8 |
  <ds b' ds>4. <ds b' fs'>4 <e' e'>8( |
  \oneVoice <ds ds'>8 <b b'> <e e'>  <ds ds'> <b b'>) r |
  
  \barNumberCheck 65
  <ds, b' fs'>4. <fs ds' b'>4 <gs' b gs'>8( |
  \voiceOne <fs fs'>8 <ds ds'> <gs gs'>  <fs fs'>[ <ds ds'>]) \oneVoice 
    <cs' cs'>( |
  <b b'>8 <fs fs'> <cs' cs'>  <b b'> <fs fs'> <e' e'> |
  <ds ds'>8 <b b'> <e e'>  <ds ds'> <b b'> <fs' fs'> |
  <ds fs b fs'>8) r r <ds,, fs b ds>4.~ |
  q2. |
  \bar "|."
}

rightHandLower = \relative {
  \partial 8 s8 |
  s2. * 8 |
  
  \barNumberCheck 9
  s2. * 8 |
  
  \barNumberCheck 17
  \clef bass \voiceTwo <a a'>8 <gs gs'> <fs fs'> <e a e'>4 <cs cs'>8 |
  \forceHShiftA q4. \forceHShiftA <bs bs'> |
  \clef treble \forceHShiftB bs'4. \forceHShiftC cs4 \forceHShiftD <fs gs>8
  q4. s |
  <e as>4. s4 \forceHShiftC cs8 |
  ds8-. e-. cs-.  ds-. e-. cs-. |
  \forceHShiftB fss4. \forceHShiftC gs4 \forceHShiftD <cs ds>8 |
  \voiceOne \forceHShiftE q4. s |
  
  \barNumberCheck 25
  \voiceTwo \forceHShiftC b8 s4 s4. |
  fs,8 g e  fs g r |
  \forceHShiftC b'8 s4 s \forceHShiftC b,8 |
  \forceHShiftF \beamPositionsA cs8 d b  cs d r |
  \forceHShiftC g4. b,4 s8 |
  \forceHShiftC fs'4. b,4 s8 |
  es4. b4 s8 |
  es4. \voiceOne <b' d> |
  
  \barNumberCheck 33
  s2. * 8 |
  
  \barNumberCheck 41
  s2. * 8 |
  
  \barNumberCheck 49
  s2. * 6 |
  \voiceTwo ds,4. \forceHShiftC e4 s8 |
  s2. |
  
  \barNumberCheck 57
  b8-. c-. a-.  \forceHShiftF b-. c-. a-. |
  b8 c b as4. |
  ds4. \forceHShiftC e4 s8 |
  s2. |
  b8-. c-. a-.  \forceHShiftF b-. c-. a-. |
  b8-. c-. b-. as4. |
  s4. s4 \forceHShiftB b'8 |
  s2. |
  
  \barNumberCheck 65
  s2. |
  b4. s |
  \voiceOne \forceHShiftE fs'4. \forceHShiftE fs |
  \forceHShiftE fs4. \forceHShiftE fs |
  s2. * 2 |
}

rightHand = \relative {
  \global
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  \partial 8 s8 |
  \voiceThree s4. fs4 s8 |
  s2. |
  s4. g4 s8 |
  s2. * 3 |
  s4. b4 s8 |
  s2. |
  
  \barNumberCheck 9
  s4. fs4 s8 |
  s2. |
  s4. a4 s8 |
  s2. * 3 |
  d,4 s8 es4 s8 |
  s2. |
  
  \barNumberCheck 17
  s2. * 8 |
  
  \barNumberCheck 25
  s4. e'4 s8 |
  s2. |
  s4. d4 s8 |
  s2. * 5 |
  
  \barNumberCheck 33
  s2. * 8 |
  
  \barNumberCheck 41
  s4. fs,4 s8 |
  s2. |
  s4. g4 s8 |
}

leftHandLower = \relative {
  \partial 8 <b,,, b'>8 |
  <fs'' fs'>8-.( q-. q-.) \voiceFour b[( fs]) \oneVoice <e e'>-. |
  <d d'>8-. <b b'>-. <e e'>-.  <d d'>-.[ <b b'>-.] <b, b'> |
  <g'' g'>8-.( q-. q-.) \voiceFour c[( g]) \oneVoice  <fs fs'>-. |
  <e e'>8-. <b b'>-. <fs' fs'>-.  <e e'>-. <b b'>-. <c c'>( |
  <cs! cs'!>8[ <fs, fs'>]) <fs'' cs' fs>-.(  <fs d' g>-.[ <fs cs' fs>-.]) 
    <c, c'>( |
  <cs! cs'!>8[ <fs, fs'>]) <fs'' cs' fs>-.(  <fs d' g>-.[ <fs cs' fs>-.])
    <g,, g'> |
  <es'' b' es>8[ q] <cs, cs'>  <e' e'>[ <es es'>] <fs,, fs'> |
  <fs'' as fs'>8 <fs, fs'>[( <es es'>]  <g g'>[ <fs fs'>]) <b,, b'> |
  
  \barNumberCheck 9
  <fs'' fs'>8-.( q-. q-.) \voiceFour b[( fs]) \oneVoice <e e'>-. |
  <d d'>8-. <b b'>-. <e e'>-.  <d d'>-.[ <b b'>-.] <b, b'> |
  <fs'' gs'>-.( q-. q-.) \voiceFour b[( fs]) \oneVoice <e e'>-. |
  <d d'>8-. <b b'>-. <e e'>-.  <d d'>-.[ <b b'>-.] <bs bs'>( |
  <cs cs'>[ <cs, cs'>]) <cs'' a' cs>_.->_(  <cs a' d>_.->[ <cs a' cs>_.->])
    <bs, bs'>( |
  <cs cs'>8[ <cs, cs'>]) <a'' fs' a>_.->_( <a fs' b!>_.->[ <a fs' a>_.->]) 
    <cs,, cs'> |
  \voiceFour <a'' a'>8[( <gs gs'>]) \oneVoice <cs,, cs'> \voiceFour <a'' a'>[(
    <b b'>]) \oneVoice <fs, fs'> |
  <a' fs' a>8 <cs, cs'>[( <bs bs'>] <d d'>[ <cs cs'>]) <fs, fs'> |
  
  \barNumberCheck 17
  <bs bs'>8. <fs fs'> <cs' cs'> <fs, fs'> |
  <e' e'>8. <fs, fs'> <ds' ds'> <fs, fs'> |
  <fs' fs'>8. <gs gs'> <fs fs'> <e e'> |
  <ds ds'>8. <gs, gs'> <cs cs'>4 q8 |
  <fss fss'>8. <cs cs'> <gs' gs'> <cs, cs'> |
  <b' b'>8. <cs, cs'> <as' as'> <cs, cs'> |
  <cs' cs'>8. <ds ds'> <cs cs'> <b b'> |
  <as as'>4 <ds, ds'>8 <gs gs'> <g g'> <g,! g'> |
  
  \barNumberCheck 25
  \voiceFour <b' b'>4 e8  fs g \oneVoice r |
  <e, e'>8-- <d d'>-- <c c'>--  <b b'>4-> <fs fs'>8 |
  \voiceFour <b' fs' b>4 d8  es fs \oneVoice r |
  <e,! e'!>8-- <d d'>-- <cs cs'>--  <b b'>4-> <es, es'>8 |
  <b'' g' b>4 <b, b'>8  <cs cs'>[ <d d'>] <fs, fs'> |
  <b' fs' b>4 <b, b'>8  <cs cs'>[ <d d'>] <g, g'> |
  <b' es b'>4 <b, b'>8  <cs cs'>[ <d d'>] <cs, cs'> |
  <b'' es b'>4. <es b' es>4 <fs,, fs'>8 |
  
  \barNumberCheck 33
  <fs'' as fs'>4 <fs, fs'>8-. <g g'>-. <cs, cs'>-. <fs fs'>-. |
  <g g'>8-. <b, b'>-. <cs cs'>-.  <d d'>-. <b b'>-. <bs bs'>-. |
  <cs cs'>8-. <fs, fs'>-. <fs' fs'>-.  <g g'>-. <cs, cs'>-. <fs fs'>-. |
  <g g'>8-. <b, b'>-. <cs cs'>-.  <d d'>-. <b b'>-. <bs bs'>-. |
  <cs cs'>8-. <fs , fs'>-. <bs bs'>-.  <cs cs'>-. <fs, fs'>-. <cs' cs'>-. |
  <d d'>8-. <fs, fs'>-. <d' d'>-.  <ds ds'>-. <fs, fs'>-. <ds' ds'>-. |
  <e e'>8-. <fs, fs'>-. <ds' ds'>-.  <e e'>-. <fs, fs'>-. <ds' ds'>-. |
  <e e'>8-. <fs, fs'>-. <es' es'>-.  <fs fs'>-. <fs, fs'>-. <b, b'>-. |
  
  \barNumberCheck 41
  <fs'' fs'>8-.( q-. q-.) \voiceFour b[( fs]) \oneVoice <e e'>-. |
  <d d'>8-. <b b'>-. <e e'>-.  <d d'>-.[ <b b'>-.] <b, b'> |
  <g'' g'>8-.( q-. q-.) \voiceFour c[( g]) \oneVoice  <fs fs'>-. |
  <e e'>8-. <b b'>-. <fs' fs'>-.  <e e'>[-. <b b'>]-. <bs bs'>( |
  <cs cs'>8[ <fs, fs'>]) <fs'' cs' fs>-.(  <fs d' g>[-. <fs cs' fs>]-.)
    <bs,, bs'>( |
  <cs cs'>8[ <fs, fs'>]) <fs'' cs' fs>-.(  <fs d' g>[-. <fs cs' fs>]-.) 
    <g,, g'> |
  <f'' b f'>8[ q] <cs cs'>-.  <d d'>[-. <g, g'>]-. <ds' ds'>-. |
  <e e'>8[-. <g, g'>]-. <ds ds'>-.  <e e'>[-. <g, g'>]-. <cs! cs'!>-. |
  
  \barNumberCheck 49
  <d! d'!>8[-. <g, g'>]-. <cs' cs'>-.  <d d'>[-. <g, g'>]-. <ds' ds'>-. |
  <e e'>8[-. <g, g'>]-. <ds ds'>-.  <e e'>[-. <g, g'>]-. <cs! cs'!>-. |
  <d d'>8[-. <g, g'>]-. <cs' cs'>-.  <d d'>[-. <g, g'>]-. <cs cs'>-. |
  <d d'>8[-. <fs, fs'>]-. <cs cs'>-.  <d d'>[-. <fs, fs'>]-. <c' c'>-. |
  <cs! cs'!>8[-. <fs, fs'>]-. <fs'' fs'>-.  q[-. <cs cs'>]-. <cs, cs'>-. |
  q8[-. <fs, fs'>]-. <fs'' fs'>-.  q[-. <fs, fs'>]-. <b, b'>-. |
  <fs' fs'>8. <b, b'> <g' g'> <b, b'> |
  <b' b'>8. <b, b'> <as' as'> <b, b'> |
  
  \barNumberCheck 57
  <a'! a'!>8. <b, b'> <a' a'> <b, b'> |
  <gs' gs'>8. <b, b'> <g' g'> <b, b'> |
  <fs' fs'>8. <b, b'> <g' g'> <b, b'> |
  <b' b'>8. <b, b'> <as' as'> <b, b'> |
  <a'! a'!>8. <b, b'> <a' a'> <b, b'> |
  <gs' gs'>8. <b, b'> <g' g'> <b, b'> |
  q8-. <as as'>-. <gs gs'>-.  <fs fs'>4 <fs'' b fs'>8 |
  q4. r8 r <b,, b'>8 |
  
  \barNumberCheck 65
  q8-. <as as'>-. <gs gs'>-.  <fs fs'>4 <ds'' b'>8 |
  q4. r8 r b-\slurShapeB ( |
  <fs' ds'>4.) r8 r fs,-\slurShapeC ( |
  <ds' b' fs'>4.) r8 r <b,, b'>-\slurShapeD ( |
  <fs'' ds' b' fs'>8)\arpeggio r r <b, fs' b>4.~ |
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
  \partial 8 s8\mp |
  s2. * 3 |
  s4. s4 s8-\alterBroken Y-offset #'(0 -3) \> |
  s16 s\! s4\f\< s8\> s\! s-\tweak Y-offset -3 \> |
  s16 s\! s4\f\< s8\> s\! s |
  s4. s8 s4\> |
  s16 s\! s4\< s8\> s\! s |
  
  \barNumberCheck 9
  s2. |
  s4. s8. s\cresc |
  s2. |
  s4. s4 s8\< |
  s8\> s\! s s4 s8-\tweak to-barline ##f \< |
  s32 s16.\> s8\! s s4. |
  s2. |
  s8 s4\< s\> s8\! |
  
  \barNumberCheck 17
  s2.-\tweak Y-offset 0.5 \p |
  s2. |
  s4. s8 s4\< |
  s4. s4\f s8\p |
  s2. |
  s4. s8. s-\tweak Y-offset -2 \dim |
  s4. s8 s4\< |
  s4. s\f |
  
  \barNumberCheck 25
  s2.-\tweak Y-offset -3 \f |
  s2. * 3 |
  s4. s8 s4-\tweak extra-offset #'(0 . -2) \cresc |
  s2. * 2 |
  s4. s4 s8\ff |
  
  \barNumberCheck 33
  s4 s8\sf s4.\p |
  s2. |
  s4 s8-\tweak Y-offset -2 \sf s4. |
  s2. |
  s8 s4-\tweak extra-offset #'(0 . -2) \cresc s4. |
  s2. * 3 |
  
  \barNumberCheck 41
  s2.-\tweak X-offset 0 \fff |
  s2. * 3 |
  s4 s8\< s\> s4\! | 
  s4 s8\< s\> s4\! | 
  s2. |
  s2 s4-\tweak Y-offset -1 \dim |
  
  \barNumberCheck 49
  s2. * 4 |
  s2.\dim |
  s2. |
  s2.-\tweak Y-offset -7 \p |
  s2. |
  
  \barNumberCheck 57
  s2. * 6 |
  s2.\pp |
  s2. |
  
  \barNumberCheck 65
  s2. * 2 |
  s2.\ppp |
  s2. * 3 |
}

% MIDI only 
pedal = {
  \partial 8 s8\sd |
  s4.\su s4\sd s8\su |
  s4. s4 s8\sd |
  s4.\su s4\sd s8\su |
  s2. |
  s4\sd s8\su\sd s4 s8\su |
  s4\sd s8\su\sd s4 s8\su\sd |
  s4 s8\su\sd s4 s8\su\sd |
  s8\su s4 s4 s8\sd |
  
  \barNumberCheck 9
  s4.\su s4\sd s8\su |
  s4. s4 s8\sd |
  s4.\su s4\sd s8\su |
  s2. |
  s4\sd s8\su\sd s4 s8\su |
  s4\sd s8\su\sd s4 s8\su\sd |
  s4 s8\su\sd s4 s8\su\sd |
  s8\su s4 s4 s8\sd |
  
  \barNumberCheck 17
  s4.\su\sd s\su\sd |
  s4.\su\sd s\su\sd |
  s4.\su\sd s\su\sd |
  s4.\su\sd s\su |
  s4.\sd s\su\sd |
  s4.\su\sd s\su\sd |
  s4.\su\sd s\su\sd |
  s4.\su\sd s4\su s8\sd |
  
  \barNumberCheck 25
  s4 s8\su s4. |
  s4. s4 s8\sd |
  s4 s8\su s4. |
  s4. s4 s8\sd |
  s4 s8\su s4 s8\sd |
  s4 s8\su s4 s8\sd |
  s4 s8\su s4 s8\sd |
  s4. s4 s8\su\sd |
  
  \barNumberCheck 33
  s4 s8\su s4. |
  s2. * 6 |
  s4. s4 s8\sd |
  
  \barNumberCheck 41
  s4.\su s4\sd s8\su |
  s4. s4 s8\sd |
  s4.\su s4\sd s8\su |
  s2. |
  s4\sd s8\su\sd s4 s8\su |
  s4\sd s8\su\sd s4 s8\su\sd |
  s4 s8\su s4. |
  s2. |
  
  \barNumberCheck 49
  s2. * 8 |
  
  \barNumberCheck 57
  s2. * 6 |
  s4. s\sd |
  s4. s\su |
  
  \barNumberCheck 65
  s4. s\sd |
  s2. * 3 |
  s4 s8\su s4.\sd |
  s2. <>\su |
}

forceBreaks = {
  \partial 8 s8 
  s2. * 4 \break
  s2. * 4 \break
  s2. * 4 \break
  s2. * 4 \break
  s2. * 4 \pageBreak
  
  s2. * 4 \break
  s2. * 5 \break
  s2. * 5 \break
  s2. * 5 \break
  s2. * 5 \pageBreak
  
  s2. * 5 \break
  s2. * 5 \break
  s2. * 5 \break
  s2. * 5 \break
}

preludeSixNotes =
\score {
  \header {
    title = "Prelude 6"
    composer = "Alexander Scriabin"
    opus = "Opus 13, No. 6"
  }
  \keepWithTag layout  
  \new PianoStaff <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Devnull \forceBreaks
  >>
  \layout {}
}

\include "articulate.ly"

preludeSixMidi =
\book {
  \bookOutputName "prelude-op13-no6"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \pedal >>
      \new Staff = "lower" << \leftHand \dynamics \pedal >>
    >>
    \midi {}
  }
}
