%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

slurShapeA = \shape #'(
                        ()
                        ()
                        ()
                        ((0 . 0) (0 . 0) (0 . 1.5) (0 . 0.5))
                        ) \etc

%%% Music %%%

global = {
  \time 2/4
  \key e \minor
}

rightHand = \relative {
  \global
  \mergeDifferentlyDottedOn
  \scaleDurations 4/5 {
    fs''16( b, fs a c  a e' a g fs |
    fs,16 c' e ds c  b ds e fs g |
    b16 e, b d! f  d a' d c b |
    b,16 f' a gs f  e gs a b c |
    e16 a, e a c  b e, c a' g! |
    b16 fs c fs b  g c, g fs' e |
    d! g, d! fs b  c fs, c e g |
    b16 e, b ds fs  ds' g, ds fs b |
    
    \barNumberCheck 9
    fs'16 b, fs a c  a e' a g fs |
    fs,16 c' e ds c  b ds e fs g |
    b16 e, b d! f  d a' d c b |
    b,16 f' a gs f  e gs a b c |
    e16 a, e a e'  d g,! e c' b |
    c16 g c, g' c  b g c, a' g |
    d'16 a d, g b  a e a,-\insideSlur ^\rall d fs |
    g16 c, g b d)
  } r4 |
  
  \barNumberCheck 17
  r8. f16\( d8. d16 |
  \afterGrace 15/16 d2-\insideSlur \trill { c16[( d] } |
  e4)~ e8 d |
  c2\) |
  r8. e16\( c8. c16 |
  \afterGrace 15/16 c2-\insideSlur \trill { b16[( c] } |
  d4)~ d8. c16 |
  b2\) |
  
  \barNumberCheck 25
  d!4(~ d8. c16 |
  b4) c(\trill |
  b4) \scaleDurations 2/3 { c8( b) r |
  c8(^\pocoAccel b) r  c(^\rall b) r | } 
  \scaleDurations 4/5 {
    fs'16-\slurShapeA ( b, fs a c  a e' a g fs |
    fs,16 c' e ds c  b ds e fs g |
    b e, b d! f  d a' d c b |
    b,16 f' a gs f  e gs a b c |
    
    \barNumberCheck 33
    e16 a, e a c  b e, c a' g! |
    b16^\accel fs c fs b  g c, g fs' e |
    e16 b f b e  c f, c b' a |
    g!16 c, g b e  f b, f a c |
    \clef bass e16 a, e gs b  f' b, f a c |
    e16 a, e gs b  ds a ds, a' b |
    e16 a, e gs b  f' b, f a c |
    e16 a, e gs b  ds a ds, a' b |
    
    \barNumberCheck 41
    e16^\stretto a, e gs b  e a, e gs b |
    e16 a, e gs b 
      << 
        { 
          s8 e,8.*1/3\noBeam gs8 |
          s2 s8 |
        } 
        \\ 
        { 
          \set tieWaitForNote = ##t 
          e'16 a, e~ gs~ b~ |
          <e, gs b e>2*5/4 |
        } 
      >> |
  }
  \clef treble <e' b' e>2)\fermata |
  \bar "|."
}

leftHand = \relative {
  \global
  \clef bass
  \scaleDurations 2/3 {
    b,8-\legato fs' e'--  c-- \clef treble a' e' |
    a,,8-- fs' a,--  g-- e' b' |
    e,,8 b' a' f-- d' a'
    d,,8-- b' d,--  c-- a' e' |
    fs,,!8-- c' a'  g,-- e' c' |
    \clef bass ds,,8-- c' fs  e,-- c' g' |
    b,8 d,! fs, as' e fs,
  }
  fs'8 b, r4 |
  
  \barNumberCheck 9
  \scaleDurations 2/3 {
    b8 fs' e'--  c-- \clef treble a' e' |
    a,,8-- fs' a,--  g-- e' b' |
    e,,8 b' a'  f-- d' a'
    d,,8-- b' d,--  c-- a' e' |
    fs,,!8-- c' a'  g,!-- e' b' |
    \clef bass e,,8 c' g'  ef, a g' |
    g8 b, d,  fs' c d, |
    d'8 d, g,
  } 
  \scaleDurations 4/5 {
    g''16 c, g b d |
    
    \barNumberCheck 17
    a'16 c, f, b d  a' c, f, b d |
    a'16 c, f, b d  a' c, f, b d |
    gs16 c, e, b' d  gs c, e, b' d |
    a'16 c, e, a c  e b e, a c |
    g'16 b, e, a c  g' b, e, a c |
    g'16 b, e, a c  g' b, e, a c |
    fs16 b, d, a' c  fs b, d, a' c |
    fs16 b, ds, a' b  fs' b, ds, a' b |
    
    \barNumberCheck 25
    fs'16 b, d,! a' b  fs' b, d, a' b |
    fs'16 b, ds, a' b  fs' b, d, a' b |
    fs'16 b, ds, a' b  fs' b, ds, a' b |
    fs'16 b, ds, a' b  fs' b, ds, a' b |
  }
  \scaleDurations 2/3 {
    b,8 fs' e'  c \clef treble a' e' |
    a,,8 fs' a,  g e' b' |
    e,,8 b' a' f d' a' |
    d,,8 b' d,  c a' e' |
    
    \barNumberCheck 33
    fs,,!8 c' a'  g, e' c' |
    \clef bass ds,,8 c' fs  e, c' g' |
    gs,,8 f' b  a, f' c' |
    e,8 g,! b,  ds' a b, |
    e'8-- b e,  ds'-- a e |
    e'8-- b e,  f'-- b, e, |
    e'8-- b e,  ds'-- a e |
    e'8-- b e,  f'-- b, e, |
  }
  
  \barNumberCheck 41
  <e e'>2-> |
  <b b'>2-> |
  <e, e'>2-> |
  <e' b' gs'>2_\fermata |
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  s2-\tweak Y-offset -1.5 \p |
  s2 |
  s8 s-\tweak Y-offset -0.5 \cresc s4 |
  s2 |
  s2\mf |
  s4 s\dim |
  s2 * 2 |
  
  \barNumberCheck 9
  s2-\tweak Y-offset -1.5 \p |
  s2 |
  s2-\tweak Y-offset -0.5 \cresc
  s2 |
  s2-\tweak Y-offset -1.5 \mf |
  s2 |
  s2\dim |
  s2 |
  
  \barNumberCheck 17
  s2 |
  s2\cresc |
  s2\> <>\! |
  s2 * 2 |
  s2\cresc |
  s2 * 2 |
  
  \barNumberCheck 25
  s2 * 4 |
  s2-\tweak X-offset 0 -\tweak Y-offset -1.5 \pp |
}

% MIDI only 
pedal = {
  s4\sd s\su\sd |
  \repeat unfold 7 { s4\su\sd s\su\sd | }
  
  \barNumberCheck 9
  \repeat unfold 8 { s4\su\sd s\su\sd | }
  
  \barNumberCheck 17
  \repeat unfold 8 { s4\su\sd s\su\sd | }
  
  \barNumberCheck 25
  \repeat unfold 8 { s4\su\sd s\su\sd | }
  
  \barNumberCheck 33
  \repeat unfold 8 { s4\su\sd s\su\sd | }
  
  \barNumberCheck 41
  s4\su\sd s\su\sd |
  s4\su\sd s\su\sd |
  s2 * 2 <>\su |
}

tempi = {
  \set Score.tempoHideNote = ##t
  \textMark \markup \tempo-markup Allegro #2 #0 92
  \tempo 4 = 92
  s2 * 8 |
  
  \barNumberCheck 9
  s2 * 6 |
  s4 \tempo 4 = 88 s |
  \tempo 4 = 84 s4 \tempo 4 = 80 s |
  
  \barNumberCheck 17
  \tempo 4 = 92
  s2 * 8 |
  
  \barNumberCheck 25
  s2 * 3 |
  \tempo 4 = 100 s4 \tempo 4 = 92 s |
  \tempo "Più vivo" 4 = 100
  s2 * 4 |
  
  \barNumberCheck 33
  s2 * 2 |
  \tempo 4 = 104
  s2 * 2 |
  \tempo 4 = 108
  s2 * 2 |
  \tempo 4 = 112
  s2 * 2 |
  
  \barNumberCheck 41
  \tempo 4 = 116
  s2 * 3 |
  \tempo 4 = 60
  s2 |
}

forceBreaks = {
  s2 * 4 \break
  s2 * 4 \break
  s2 * 4 \break
  s2 * 4 \break
  s2 * 4 \pageBreak
  
  s2 * 3 \break
  s2 * 4 \break
  s2 * 4 \break
  s2 * 4 \break
  s2 * 4 \break
}

preludeFourNotes =
\score {
  \header {
    title = "Prelude 4"
    composer = "Alexander Scriabin"
    opus = "Opus 13, No. 4"
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

preludeFourMidi =
\book {
  \bookOutputName "prelude-op13-no4"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \pedal \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \pedal \tempi >>
    >>
    \midi {}
  }
}
