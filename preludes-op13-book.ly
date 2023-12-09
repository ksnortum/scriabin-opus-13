%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"

\include "includes/header-paper.ily"
\include "includes/title-page.ily"
\include "includes/prelude-op13-no1-parts.ily"
\include "includes/prelude-op13-no2-parts.ily"
\include "includes/prelude-op13-no3-parts.ily"
\include "includes/prelude-op13-no4-parts.ily"
\include "includes/prelude-op13-no5-parts.ily"
\include "includes/prelude-op13-no6-parts.ily"

% Title page

\titlePage

% Table of contents

\bookpart {
  \header {
    title = ##f
    subtitle = ##f
    composer = ##f
    arranger = ##f
    copyright = ##f
    tagline = ##f
  }
  \markuplist \table-of-contents
}

% PDFs

\tocItem \markup "No. 1, Maestoso in C major"
\preludeOneNotes
\pageBreak

\tocItem \markup "No. 2, Allegro in A minor"
\preludeTwoNotes
\pageBreak

\tocItem \markup "No. 3, Andante in G major"
\preludeThreeNotes
\pageBreak

\tocItem \markup "No. 4, Allegro in E minor"
\preludeFourNotes
\pageBreak

\tocItem \markup "No. 5, Allegro in D major"
\preludeFiveNotes
\pageBreak

\tocItem \markup "No. 6, Presto in B minor"
\preludeSixNotes

% Midi

\preludeOneMidi
\preludeTwoMidi
\preludeThreeMidi
\preludeFourMidi
\preludeFiveMidi
\preludeSixMidi
