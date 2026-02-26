\version "2.24.4"
\include "articulate.ly"

\header {
  title = "Hino da Igreja do Evangelho Quadrangular"
  composer = "Aimée Semple Mcpherson (1890 - 1944)"
  poet = "Adiel de Oliveira"
  arranger = \markup {
    \override #'(baseline-skip . 1)
    \right-column { 
      "Alexandre Felipe"
      "Alexandre Brasolim" 
    }
  }
  copyright = "Transcrição para LilyPond por Samuel Santana da Purificação"
}

\paper {
  #(set-paper-size "a4")
  oddFooterMarkup = \markup {
    \fill-line {
      \center-column {
        %\fromproperty #'header:copyright
        \fromproperty #'header:tagline
      }
    }
  }
  evenFooterMarkup = \oddFooterMarkup
}

global = {
  \key g \major
  \numericTimeSignature
  \time 2/4
  \tempo "Marcha" 4 = 120
}

scoreChords = \chordmode {
  \global
  % Intro
  g2*4 g2*4 g1 aes2 \tuplet 3/2 { aes4 bes aes } g2*4
  % Solo
  c2 cis:dim g,4. e4:aug e4.:7 a,2:7 d:7
  g2 bes,:maj7 ees:maj7 d:7
  \repeat volta 2 {
    % Verso
    g1*3 d1:7
    a1:m7 d:7 a2:m7 d:7 g4 gis:dim7 a:m7 d:7
    g1*2 g1:7 c
    c2 cis:dim g, e4:aug e4:7 a,2:7 d:7 g1
    % Refrão
    b,1:7 e:m7 b,:7 e:m7
    a,1:7 d a,4:7 b:m7 a:/cis a:7 d1
    g1*3:6 d1
    a,1:m7 d:7 a,4:m7 b,:m7 c d:7 g2 g
    g1*2:6 g1:7 c
    c2 cis:dim g, e4:aug e4:7 a,2:7 d:7 
  } 
  \alternative {
    {g2 bes,:maj7 ees:maj7 d:7}
    {}
  }
  \repeat volta 2 { 
    g1 c2 cis:dim g, e4:aug e4:7 a,2:7 d:7
  }
  g8*5 c4. g8*5 d4. g1 g8
  
}

scoreMelody = \relative c'' {
  \global
  \section
  r2 r r r r r r r
  \section 
  r2 r r r r r r r 
  \section \sectionLabel "Solo"
  r2 r r r r r r r r r
  \repeat volta 2 {
    \section \sectionLabel "Verso"
    b4. ais8 b4. ais8 b4 g d2 g4 g a g fis2 ~ fis
    c'4. b8 c4. b8 c4 a fis2 c'4 c d c b2 ~ b
    b4. ais8 b4. ais8 b4 g d2 b'4 b c b e,2 ~ e
    g4. g8 fis4 g d' b c b e,2 fis g r8 b b b
    \section \sectionLabel "Refrão"
    b4 r r8 b b b b4 r r8 b b b b4 a g fis e2 r8 a a a
    a4 a r8 a a a a2 r8 a a a a4 g fis e d2 r8 d d ees
    e4 e r8 d d ees e2 r8 d d ees e4 d e g fis2 r8 d d ees
    e2 r8 d d ees e2 r8 d d ees e4 fis g a b-. r r8 d, d ees
    e2 r8 d d ees e2 r8 b' b b b4 b c b e,2 ~ e
    g4. g8 fis8 fis g g d'4 b c b e,2 fis
  }
  \alternative {
    {g2 ~ g r r}
    {}
  }
  \repeat volta 2 { 
    g2 ~ g g4. g8 fis8 fis g g d'4 b c b e,2 fis 
  }
  \section \sectionLabel "Final"
  g2 ~ g r r r r r \bar "|."
}

verseI = \lyricmode {
  \set stanza = "1."
  Ei -- a, sal -- vos a -- van -- çai, na -- da de te -- mer
  Va -- mos fir -- mes ba -- ta -- lhar, pron -- tos pra ven -- cer
  Vai co -- nos -- co_o Ge -- ne -- ral, nos -- so bom Je -- sus
  E -- le nos da -- rá vi -- tó -- ria pe -- la cruz.
}

verseII = \lyricmode {
  \set stanza = "2."
  Va -- mos tem -- plos le -- van -- tar por to -- do_o Bra -- sil
  A pre -- gar, sem des -- can -- sar, nos -- so Rei gen -- til
  Va -- mos mis -- sio -- ná -- rios ser, to -- dos, to -- dos nós
  Trans -- mi -- tin -- do com pra -- zer de Deus a voz.
}

chorus = \lyricmode {
  A -- van -- te, pois, e sem pa -- rar, o E -- van -- ge lho_a -- nun -- ci -- ai
  O E -- van -- ge -- lho Qua -- dran -- gu -- lar de Deus, o nos -- so_e -- ter -- no Pai
  Pois Cris -- to sal -- va o pe -- ca -- dor pa -- ra que se -- ja_um bom cris -- tão
  Cu -- ra tam -- bém a su -- a dor, qual -- quer do -- en -- ça_e a -- fli -- ção
  Com seu po -- der quer ba -- ti -- zar, do céu vi -- rá pra nos le -- var
  E, com e -- le, nós ha -- ve -- mos sem -- pre de rei -- nar
  nar. E, com e -- le, nós ha -- ve -- mos sem -- pre de rei -- nar
}

scoreViolinI = \relative c'' {
  \global
  \section
  r4 \tuplet 7/4 { g16-> \f( a b c d e fis } g2) \startTrillSpan ~ g ~ g \tuplet 3/2 { bes,8-. \stopTrillSpan g-. bes-. } \tuplet 3/2 { ees8-. bes-. ees-. } \tuplet 3/2 { f4-> g-> a-> }
  \tuplet 3/2 { b8-. \p d-. b-. } \tuplet 3/2 { g-. b-. g-. } \tuplet 3/2 { d-. g-. d-. } \tuplet 3/2 { b-. d-. b-. } 
  \section
  \tuplet 3/2 { d-. g-. d-. } \tuplet 3/2 { d-. b-. d-. } \tuplet 3/2 { d-. g-. d-. } \tuplet 3/2 { d-. b-. d-. } \tuplet 3/2 { ees-. aes-. ees-. } \tuplet 3/2 { ees-. c-. ees-. } \tuplet 3/2 { ees-. c-. d-. } \tuplet 3/2 { f-. ees-. c-. }
  \tuplet 3/2 { d8-. b-. d-. } \tuplet 3/2 { g-. d-. g-. } \tuplet 3/2 { b-. g-. d-. } \tuplet 3/2 { g-. d-. b-. } \tuplet 3/2 { d-. b-. g-. } \tuplet 3/2 { b-. g-. d-. } \tuplet 3/2 { g,-. \< b-. d-. } \tuplet 3/2 { g-. b-. d-. } \!
  \section \sectionLabel "Solo"
  e2 \f \tuplet 3/2 { e4( g bes }) b4-> g8 c-. r8 b( e d) cis( e, g b) a( c, fis a) g( d a' g) a2-> bes-> a->
  \repeat volta 2 {
    \bar ".|:"
    \section \sectionLabel "Verso"
    r8 b,4-> \>( ais8) \! r8 b4-> \>( ais8) \! r8 b4-> \>( ais8) \! r8 b4-> \>( ais8) \! r2 r2 r2
    r2 r8 c4-> \>( b8) \! r8 c4-> \>( b8) \! r8 c4-> \>( b8) \! r8 c4-> \>( b8) \! r2 r2 b8 \<(d b' gis) \!
    a8 \>( e fis d) \! r8 b4-> \>( ais8) \! r8 b4-> \>( ais8) \! r8 b4-> \>( ais8) \! r8 b4-> \>( ais8) \! \set Staff.midiInstrument = "pizzicato strings" r8 d ^\markup { \italic "pizz." } g b c4-> b
    e,4 g,, c r \set Staff.midiInstrument = "violin" r8 g' ^\markup { \italic "arco" }( e' g,) r g( e' g,) r g( d' b) c4( b) e2
    fis,2 \tuplet 3/2 { g8( b d }) \tuplet 3/2 { e( d b }) g-. b'-. b-. b-.
    \section \sectionLabel "Refrão"
    \override Beam.gap-count = #3 \repeat tremolo 8 { b32->( c32) } \revert Beam.gap-count r8 b-. b-. b-. \override Beam.gap-count = #3 \repeat tremolo 8 { b32->( c32) } \revert Beam.gap-count
    r8 b-. b-. b-. b4( a) g( fis) e2 r a,16( cis e g) a(-> g e cis)
    a8-. r r4 d16( fis a c) d(-> c a fis) d8-. r r4 r8 cis-. r b-. r <g a>-. r <g a>-. <fis d'>-. r r4
    r8 d' d( dis)
    \section
    e4 e r8 d d( dis) e2 r8 d d( dis) e4( d) e( g)
    fis2 r8 d d( dis) e2 r8 d d( dis) e2 r8 d d( dis)
    e4( fis) g( a) b4. <fis ais>8( <g b>)-. r r4 \set Staff.midiInstrument = "pizzicato strings" e,8 ^\markup { \italic "pizz." } g b d e r r4 e8 g b d e r r4
    r4 \set Staff.midiInstrument = "violin" b( ^\markup { \italic "arco" } c b) e,2~ e g fis4( g) d'( b) c( b)
    e,2 fis 
  } 
  \alternative { 
    {g8( d g b) a2-> bes-> a->} 
    {} 
  } 
  \repeat volta 2 {
    g8( d g b)
    d16( c b a) b( a g fis)
    \section
    g2 fis4( g) d'( b) e( d) e,2 fis
  }
  \section \sectionLabel "Final"
  g8-. d-. b'-. d,-. g-. e-.-> g-. e-. g-. d-. b'-. d,-. g-. fis-.-> a-. fis-. \tuplet 3/2 { g-. b-. g-. } \tuplet 3/2 { d-. g-. d-. } \tuplet 3/2 { b-. d-. b-. } \tuplet 3/2 { g'->-. g->-. g->-. } g8-.-> r r4 \bar "|."
}

scoreViolinII = \relative c'' {
  \global
  \section
  r4 \tuplet 7/4 { g,16-> \f( a b c d e fis } g2) \startTrillSpan ~ g ~ g \tuplet 3/2 { ees8-. \stopTrillSpan bes-. ees-. } \tuplet 3/2 { g8-. ees-. g-. } \tuplet 3/2 { a4-> bes-> c-> }
  \tuplet 3/2 { d8-. \p g-. d-. } \tuplet 3/2 { b-. d-. b-. } \tuplet 3/2 { g-. b-. g-. } \tuplet 3/2 { d-. g-. d-. } 
  \section
  \tuplet 3/2 { g-. b-. g-. } \tuplet 3/2 { g-. d-. g-. } \tuplet 3/2 { g-. b-. g-. } \tuplet 3/2 { g-. d-. g-. } \tuplet 3/2 { aes-. c-. aes-. } \tuplet 3/2 { aes-. ees-. aes-. } \tuplet 3/2 { aes-. ees-. f-. } \tuplet 3/2 { bes-. aes-. ees-. }
  \tuplet 3/2 { g8-. d-. g-. } \tuplet 3/2 { b-. g-. b-. } \tuplet 3/2 { d-. b-. g-. } \tuplet 3/2 { b-. g-. d-. } \tuplet 3/2 { b'-. g-. d-. } \tuplet 3/2 { g-. d-. b-. } \tuplet 3/2 { b-. \< d-. g,-. } \tuplet 3/2 { b-. g'-. b-. } \! 
  \section \sectionLabel "Solo" 
  c2 \f \tuplet 3/2 { bes4( cis e }) d4-> b8-> r8
  r8 b( e d) cis( e g b) a( c, fis a) g( d a' g) d2-> d-> c-> \bar "||"
  \repeat volta 2 { 
    \bar ".|:" 
    \section \sectionLabel "Verso"
    r4 g-- r4 g-- r4 g-- r4 g-- r2 r2 r2
    r2 r4 g-- r4 g-- r4 fis-- r4 fis-- r2 r2 g8 \<( b f' d) \!
    e8 \>( c a fis) \! r4 g-- r4 g-- r4 g-- r4 g-- \set Staff.midiInstrument = "pizzicato strings" r8 g ^\markup { \italic "pizz." } b d g4-> d
    c4 g, c r \set Staff.midiInstrument = "violin" r8 e ^\markup { \italic "arco" }( cis' e,) r e( cis' e,) r d( b' g) gis2 g
    c,2 \tuplet 3/2 { b8( d g }) \tuplet 3/2 { b( g d }) b-. b'-. b-. b-. 
    \section \sectionLabel "Refrão" 
    \override Beam.gap-count = #3 \repeat tremolo 8 { b32->( c32) } \revert Beam.gap-count r8 b-. b-. b-. \override Beam.gap-count = #3 \repeat tremolo 8 { b32->( c32) } \revert Beam.gap-count
    r8 b-. b-. b-. b4( a) g( fis) e2 r e16( g a cis) e(-> cis a g)
    e8-. r r4 fis16( a c d) fis(-. d c a) fis8-. r r4 r8 <g, e'>-. r <a d>-. r cis-. r cis-. d-. r r4
    r8 d' d( dis) 
    \section
    e4 e r8 d d( dis) e2 r8 d d( dis) e4( d) e( g)
    fis2 r8 d d( dis) e2 r8 d d( dis) e2 r8 d d( dis)
    e4( fis) g( a) b4. <ais, cis>8( <b d>)-. r r4 \set Staff.midiInstrument = "pizzicato strings" e,8 ^\markup { \italic "pizz." } g b d e r r4 e,8 g b d e r r4
    r4 \set Staff.midiInstrument = "violin" b( ^\markup { \italic "arco" } d2) c~ c g fis4( g) d'( b) e( d)
    cis2 c 
  } 
  \alternative { 
    {b8( g b d) d2-> d-> c->}
    {}
  }
  \repeat volta 2 { 
    b8( g b d)
    d16( c b a) b( a g fis) 
    \section 
    g2 fis4( g) d'( b) e( d) cis2 c
  }
  \section \sectionLabel "Final"
  b8-. g-. d'-. g,-. b-. c-.-> e-. c-. b-. g-. d'-. g,-. b-. d-.-> fis-. d-. \tuplet 3/2 { b-. d-. b-. } \tuplet 3/2 { g-. b-. g-. } \tuplet 3/2 { d-. g-. d-. } \tuplet 3/2 { b'-.-> b-.-> b-.-> } b8-.-> r r4 \bar "|."
}

scoreViola = \relative c' {
  \global
  \section
  \set Staff.midiInstrument = "tremolo strings" g2:32-> \f ~ g2:32 ~ g2:32 ~ g2:32 \set Staff.midiInstrument = "viola" \tuplet 3/2 { g8-. ees-. g-. } \tuplet 3/2 { bes-. g-. bes-. } \tuplet 3/2 { c4-> ees-> f-> }
  \tuplet 3/2 { g8-. \p b-. g-. } \tuplet 3/2 { d-. g-. d-. } \tuplet 3/2 { b-. d-. b-. } \tuplet 3/2 { g-. b-. g-. } 
  \section
  \tuplet 3/2 { b-. d-. b-. } \tuplet 3/2 { b-. g-. b-. } \tuplet 3/2 { b-. d-. b-. } \tuplet 3/2 { b-. g-. b-. } \tuplet 3/2 { c-. ees-. c-. } \tuplet 3/2 { c-. aes-. c-. } \tuplet 3/2 { c-. aes-. bes-. } \tuplet 3/2 { d-. c-. aes-. }
  \tuplet 3/2 { b8-. g-. b-. } \tuplet 3/2 { d-. b-. d-. } \tuplet 3/2 { g-. d-. b-. } \tuplet 3/2 { d-. b-. g-. } \tuplet 3/2 { g'-. d-. b-. } \tuplet 3/2 { d-. b-. g-. } \tuplet 3/2 { d-. \< g-. b-. } \tuplet 3/2 { d-. d-. g-. } \! 
  \section \sectionLabel "Solo"
  g2 \f \tuplet 3/2 { g,4( bes cis }) g4-> d8-> r8
  r8 b'( e d) cis( e g b) a( c, fis a) g( d a' g) f2-> <f g,>-> <e g,>-> \bar "||"
  \repeat volta 2 {
    \bar ".|:" 
    \section \sectionLabel "Verso" 
    r4 d-- r4 d-- r4 d-- r4 d-- r2 r2 r2
    r2 r4 <c e>-- r4 <c e>-- r4 d-- r4 d-- r2 r2 d8 \<( g d' b) \!
    c8 \>( a d, a) \! r4 d-- r4 d-- r4 d-- r4 d-- \set Staff.midiInstrument = "pizzicato strings" r8 b ^\markup { \italic "pizz." } d g d'4-> g,
    g4 g c, r \set Staff.midiInstrument = "viola" r8 bes ^\markup { \italic "arco" }( g' bes,) r bes( g' bes,) r b( g' d) d2 cis
    a2 \tuplet 3/2 { d,8( g b }) \tuplet 3/2 { e( b g }) b,-. b'-. b-. b-. 
    \section \sectionLabel "Refrão" 
    \override Beam.gap-count = #3 \repeat tremolo 8 { b32->( c32) } \revert Beam.gap-count r8 b-. b-. b-. \override Beam.gap-count = #3 \repeat tremolo 8 { b32->( c32) } \revert Beam.gap-count
    r8 b-. b-. b-. b4( a) g( fis) e2 r cis'16( e g a) cis(-> a g e)
    cis8-. r r4 a16( c d fis) a(-> fis d c) a8-> r r4 r8 cis-. r b-. r a-. r g-. fis-. r r4
    r8 d' d( dis) 
    \section
    e4 e r8 d d( dis) e2 r8 d d( dis) e4( d) e( g)
    fis2 r8 d d( dis) e2 r8 d d( dis) e2 r8 d d( dis)
    e4( fis) g( a) b4. <cis, e>8( <d fis>)-. r r4 \set Staff.midiInstrument = "pizzicato strings" e,8 ^\markup { \italic "pizz." } g b d e r r4 e,8 g b d e r r4
    r4 \set Staff.midiInstrument = "viola" d( ^\markup { \italic "arco" } f2) e~ e g fis4( g) d'( b) gis2
    g2 a, 
  }
  \alternative {
    {d8( b d g) f2-> <g, f'>-> <g e'>->}
    {}
  } 
  \repeat volta 2 {
    d'8( b d g)
    d'16( c b a) b( a g fis) 
    \section 
    g2 fis4( g) d'( b) gis2 g a,
  }
  \section \sectionLabel "Final" 
  d8-. b-. g'-. b,-. d-. g-.-> c-. g-. d-. b-. g'-. b,-. d-. a'-.-> d-. a-. \tuplet 3/2 { d,-. g-. d-. } \tuplet 3/2 { b-. d-. b-. } \tuplet 3/2 { g-. b-. g-. } \tuplet 3/2 { d'->-. d->-. d->-. } d8-.-> r r4 \bar "|."
}

scoreCello = \relative c {
  \global
  \section
  \set Staff.midiInstrument = "tremolo strings" g2:32-> \f ~ g2:32 ~ g2:32 ~ g2:32 ~ g2:32 ~ g2:32 ~
  g2:32 ~ g2:32 \set Staff.midiInstrument = "cello" 
  \section
  g ~ g ~ g ~ g ~
  g2 ~ g ~ g4 g' \p ~ g2 
  \section \sectionLabel "Solo"
  c,2 \f \tuplet 3/2 { cis4 e g } g4-> g8-> e-.
  r8 e( gis b) g2 fis  g bes-> ees,-> d-> \bar "||"
  \repeat volta 2 {
    \bar ".|:" 
    \section \sectionLabel "Verso" 
    r8 b'4-> \>( ais8) \! r8 b4-> \>( ais8) \! r8 b4-> \>( ais8) \! r8 b4-> \>( ais8) \! r2 r2 r2
    r2 r8 c4-> \>( b8) \! r8 c4-> \>( b8) \! r8 c4-> \>( b8) \! r8 c4-> \>( b8) \! r2 r2 g,8 \<( d' f4) \!
    e8 \>( g fis d) \! r8 b'4-> \>( ais8) \! r8 b4-> \>( ais8) \! r8 b4-> \>( ais8) \! r8 b4-> \>( ais8) \! \set Staff.midiInstrument = "pizzicato strings" r4 d, ^\markup { \italic "pizz." } g b,
    c4 g c r \set Staff.midiInstrument = "cello" g'2 ^\markup { \italic "arco" } fis4( g) d'( b) e,2 g
    fis2 \tuplet 3/2 { g,8( b d }) \tuplet 3/2 { e8( d b }) g8-. b'-. b-. b-. 
    \section \sectionLabel "Refrão" 
    \override Beam.gap-count = #3 \repeat tremolo 8 { b32->( c32) } \revert Beam.gap-count r2 e,,8.-. b'16-. e8-. fis-.
    g8-. fis-. e-. b-. b'4( a) g( fis) e2 r a16( g e cis) a(-> cis e g)
    a8-. r r4 d16( c a fis) d(-> fis a c) d8-. r r4 r8 a-. r g-. r fis-. r e-. d-. d16-. d-. fis8-. a-.
    r8 d, d( dis)
    \section
    e4 e r8 d d( dis) e2 r8 d d( dis) e4( d) e( g)
    fis2 r8 d d( dis) e2 r8 d d( dis) e2 r8 d d( dis)
    e4( fis) g( a) b4. <fis ais>8( <g b>)-. r r4 \set Staff.midiInstrument = "pizzicato strings" e,8 ^\markup { \italic "pizz." } g b d e r r4 e,8 g b d e r r4
    r4 \set Staff.midiInstrument = "cello" g~ ^\markup { \italic "arco" } g2 g~ g g fis4( g) d'( b) d2
    e,2 d' 
  }
  \alternative {
    {g,8( d g b) bes2-> ees-> d->}
    {}
  } 
  \repeat volta 2 { 
    g,8( d g b)
    d16( c b a) b( a g fis)
    \section 
    g2 fis4( g) d'( b) d2 e, d'
  }
  \section \sectionLabel "Final" 
  g,8-. d-. b'-. g-. d'-. c-. g-. c-. g-. d-. b'-. g-. d'-. a-.-> fis-. d-. \tuplet 3/2 { g-. b-. g-. } \tuplet 3/2 { d-. g-. d-. } \tuplet 3/2 { b-. d-. b-. } \tuplet 3/2 { g->-. g->-. g->-. } g8-.-> r r4 \bar "|."
}

scoreElectricBass = \relative c, {
  \global
  \section
  g2-> \f ~ g ~ g ~ g ~ g ~ g ~ g ~ g
  \section
  g2 ~ g ~ g ~ g ~ g ~ g ~ g4. r8 r2 
  \section \sectionLabel "Solo" 
  c2 cis g'4. e8-. r8 e4. a2 d, g bes-> ees,-> d->
  \repeat volta 2 {
    \bar ".|:" 
    \section \sectionLabel "Verso"
    g8-. [ r16 g ] d4 g d g8-. [ r16 g ] d4 g d  g8-. [ r16 g ] d4 g d d a'
    d,4 a' a e a e d a' d, a' a e d a' g gis
    a4 d, g8. g16 d4 g d g8. g16 d4 g d g8. g16 d4 g b,
    c4 g' c, g' cis, g' cis, g' g d e b' a e
    d4 a' \tuplet 3/2 { g8 b d } \tuplet 3/2 { g d b } g-. r r4 
    \section \sectionLabel "Refrão"  
    b8-> r b-> r b r r4 e,8.-. b'16-. e8-. fis-.
    g8-. fis-. e-. b-.-. b8-. r b-. r b-. r r4 e,2 ~ e a4 e'
    a,4 e' d a d a a b cis a d a
    d4 a
    \section
    g d g d g d g d g d g d
    d4 a' d, a' a e a e d' a d a
    e4( fis) g( a) g d' g, d' g, d' g, d' g,8. g16 d'4 g, d'
    g,4 d' g, b c g c g cis g cis g g d e b
    a'4 e d a' 
  }
  \alternative {
    {g2 bes ees d}
    {}
  } 
  \repeat volta 2 { 
    g,4 d g b, 
    \section
    c g' cis, g' g d e b a e d fis
  }
  \section \sectionLabel "Final"
  g'4 d g8 c,4.-^ g'4 d g8 d4.-^ g2 g g,8 r r4 \bar "|."
}

scoreVocalPart = \new Staff \with {
  instrumentName = "Vocal"
  shortInstrumentName = "Vz."
  midiInstrument = "choir aahs"
} \scoreMelody
\addlyrics { \verseI \chorus }
\addlyrics { \verseII }

scoreViolinIPart = \new Staff \with {
  instrumentName = "Violin I"
  shortInstrumentName = "Vl. I"
  midiInstrument = "violin"
} \scoreViolinI

scoreViolinIIPart = \new Staff \with {
  instrumentName = "Violin I"
  shortInstrumentName = "Vl. II"
  midiInstrument = "violin"
} \scoreViolinII

scoreViolaPart = \new Staff \with {
  instrumentName = "Viola"
  shortInstrumentName = "Vla."
  midiInstrument = "viola"
} { \clef alto \scoreViola }

scoreCelloPart = \new Staff \with {
  instrumentName = "Cello"
  shortInstrumentName = "Cl."
  midiInstrument = "cello"
} { \clef bass \scoreCello }

scoreElectricBassPart = \new Staff \with {
  midiInstrument = "electric bass (finger)"
  instrumentName = "Electric bass"
  shortInstrumentName = "E.Bs."
} { \clef bass \transposition c \transpose c c' \scoreElectricBass }

\book {
  \bookOutputName "Hino Quadrangular"
  \paper {
    left-margin = 12\mm
    right-margin = 10\mm
  }
  \score {
    <<
      \new ChordNames { \scoreChords }
      \scoreVocalPart
      \scoreViolinIPart
      \scoreViolinIIPart
      \scoreViolaPart
      \scoreCelloPart
      \scoreElectricBassPart
    >>
    \layout {
      #(layout-set-staff-size 16)
    }
  }
  \score {
    \unfoldRepeats \articulate {
      <<
        \scoreChords
        \scoreVocalPart
        \scoreViolinIPart
        \scoreViolinIIPart
        \scoreViolaPart
        \scoreCelloPart
        \scoreElectricBassPart
      >>
    }
    \midi {
      \tempo 4 = 120
    }
  }
}

\book {
  \bookOutputName "Vocal"
  \header {
    instrument = "Vocal"
  }
  \score {
    <<
      \new ChordNames { \scoreChords }
      \scoreVocalPart
    >>
    \layout { 
      #(layout-set-staff-size 19.5)
      indent = 0\mm
      \context { 
        \Staff 
        \omit InstrumentName
      }
    }
  }
  \score {
    \unfoldRepeats \articulate {
      <<
        \scoreChords
        \scoreVocalPart
      >>
    }
    \midi {
      \tempo 4 = 120
    }
  }
}

\book {
  \bookOutputName "Violin I"
  \header {
    instrument = "Violin I"
  }
  \score {
    \scoreViolinIPart
    \layout { 
      #(layout-set-staff-size 19.5)
      indent = 0\mm
      \context { 
        \Staff 
        \omit InstrumentName
      }
    }
  }
  \score {
    \unfoldRepeats \articulate {
      \scoreViolinIPart
    }
    \midi {
      \tempo 4 = 120
    }
  }
}

\book {
  \bookOutputName "Violin II"
  \header {
    instrument = "Violin II"
  }
  \score {
    \scoreViolinIIPart
    \layout { 
      #(layout-set-staff-size 19.5)
      indent = 0\mm
      \context { 
        \Staff 
        \omit InstrumentName
      }
    }
  }
  \score {
    \unfoldRepeats \articulate {
      \scoreViolinIIPart
    }
    \midi {
      \tempo 4 = 120
    }
  }
}

\book {
  \bookOutputName "Viola"
  \header {
    instrument = "Viola"
  }
  \score {
    \scoreViolaPart
    \layout { 
      #(layout-set-staff-size 19.5)
      indent = 0\mm
      \context { 
        \Staff 
        \omit InstrumentName
      }
    }
  }
  \score {
    \unfoldRepeats \articulate {
      \scoreViolaPart
    }
    \midi {
      \tempo 4 = 120
    }
  }
}

\book {
  \bookOutputName "Cello"
  \header {
    instrument = "Cello"
  }
  \score {
    \scoreCelloPart
    \layout { 
      #(layout-set-staff-size 19.5)
      indent = 0\mm
      \context { 
        \Staff 
        \omit InstrumentName
      }
    }
  }
  \score {
    \unfoldRepeats \articulate {
      \scoreCelloPart
    }
    \midi {
      \tempo 4 = 120
    }
  }
}

\book {
  \bookOutputName "Baixo"
  \header {
    instrument = "Baixo"
  }
  \score {
    \scoreElectricBassPart
    \layout { 
      #(layout-set-staff-size 19.5)
      indent = 0\mm
      \context { 
        \Staff 
        \omit InstrumentName
      }
    }
  }
  \score {
    \unfoldRepeats \articulate {
      \scoreElectricBassPart
    }
    \midi {
      \tempo 4 = 120
    }
  }
}
