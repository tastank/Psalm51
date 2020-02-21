\version "2.12.3"

\include "defs.lyi"
\include "header.lyi"
\include "template.lyi"


\include "cantor.lyi"
\include "soprano.lyi"
\include "alto.lyi"
\include "tenor.lyi"
\include "bass.lyi"

\include "piano.lyi"

voiceInstr = "choir aahs"

\paper {
    ragged-last-bottom=##f
}
 
\score {
    <<

        \new Staff = Cantor <<
            \set Staff.instrumentName = "Cantor"
            \set Staff.midiInstrument = \voiceInstr
            \template
            \new Voice <<
                \cantor
            >>
        >>

        \new ChoirStaff = choir <<
            \new Staff = Soprano <<
                \set Staff.instrumentName = "Soprano"
                \set Staff.shortInstrumentName = "S"
                \set Staff.midiInstrument = \voiceInstr
                \template
                \new Voice <<
                    \soprano
                >>
            >>
           
            \new Staff = Alto <<
                \set Staff.instrumentName = "Alto"
                \set Staff.shortInstrumentName = "A"
                \set Staff.midiInstrument = \voiceInstr
                \template
                \new Voice <<
                    \alto
                >>
            >>

            \new Staff = Tenor <<
                \set Staff.instrumentName = "Tenor"
                \set Staff.shortInstrumentName = "T"
                \set Staff.midiInstrument = \voiceInstr
                \clef "treble_8"
                \template
                \new Voice <<
                    \tenor
                >>
            >>

            \new Staff = Bass <<
                \set Staff.instrumentName = "Bass"
                \set Staff.shortInstrumentName = "B"
                \set Staff.midiInstrument = \voiceInstr
                \clef bass
                \template
                \new Voice <<
                    \bass
                >>
            >>
        >>
        
       \new PianoStaff = Piano <<
            \set PianoStaff.instrumentName = "Piano"
            \set PianoStaff.midiInstrument = "acoustic grand"
            \new Staff = Upper <<
              \template
              \new Voice <<
                \pianorh
              >>
            >>
            \new Staff = Lower <<
              \template
              \new Voice <<
                \pianolh
              >>
            >>
       >>

    >>
    \layout {
        \context {\Staff
            \RemoveEmptyStaves
        }
    }
    \midi { }
}
