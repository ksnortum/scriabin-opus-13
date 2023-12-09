\version "2.24.0"

%
% Scheme functions
%

#(define-markup-command (tempo-markup layout props tempo dur dots mm) 
                        (markup? integer? integer? markup?)
  "\tempo emulator, but with no parens around MM"
  ; tempo = the text of the tempo, so Allegro, Lento, etc.
  ; dur   = log 2 of the duration, so 0 = whole, 1 = half, 2 = quarter, ..."
  ; dots  = the number of dots after the duration
  ; mm    = the metronome mark, so 100 or 63-76
  ; example: \textMark \markup \tempo-markup Vivace #2 #1 63-76 c'1
  (interpret-markup layout props
    (let ((dura (ly:make-duration dur dots)))
      #{\markup {
        \hspace #1.5 \bold { #tempo \teeny "M.M." }
        \raise #0.4 \tiny \note { #dura } #UP
        \small { "=" #mm }
      }#})))

%
% Redefine
%
staffUp   = \change Staff = "upper"
staffDown = \change Staff = "lower"

sd = \sustainOn
su = \sustainOff

hideNoteHead = \once {
  \omit Stem
  \omit Dots
  \omit Flag
  \hideNotes
  \override NoteColumn.ignore-collision = ##t
}

tupletOff = {
  \omit TupletNumber
  \omit TupletBracket
}
tupletOn = {
  \undo \omit TupletNumber
  \undo \omit TupletBracket
}
tupletNumberOk = \undo \omit TupletNumber

insideSlur = \tweak avoid-slur #'inside \etc

eighthsInTwos.34 = {
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = 1,1,1
}

%
% Markup
%

legato = \markup \large \italic legato
stretto = \markup \large \italic stretto
rall = \markup \large \italic rall.
ten = \markup \large \italic ten.
ppDolce = \markup { \dynamic pp \large \italic dolce }
sottoVoce = \markup \large \italic "sotto voce"
accelFine = \markup \large \italic "accel. sin al fine"
dolciss = \markup \large \italic dolciss.
accel = \markup \large \italic accel.
pocoAccel = \markup \large \italic "poco accel."
