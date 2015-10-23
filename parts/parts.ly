% parts.ly: Create individual instrument parts with multipart template.
% Copyright (C) 2015, Brian Clements

% This program is free software: you can redistribute it and/or modify it under
% the terms of the GNU General Public License as published by the Free Software
% Foundation, either version 3 of the License, or (at your option) any later
% version.

% This program is distributed in the hope that it will be useful, but WITHOUT
% ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
% FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
% details.

% You should have received a copy of the GNU General Public License along with
% this program.  If not, see <http://www.gnu.org/licenses/>.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%                          Multi-Part Parts                           %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\version "2.16.2"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%                              Settings                               %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#(set-global-staff-size 20)
#(ly:set-option 'relative-includes #t)

\paper {
    #(set-paper-size "letter")
    ragged-last-bottom = ##t
    ragged-last = ##t
    ragged-bottom = ##f
    oddHeaderMarkup = \markup \fill-line {
        \on-the-fly #print-page-number-check-first
        \fromproperty #'page:page-number-string
        \null
        \on-the-fly #not-first-page
        \fromproperty #'header:title
        \null
        \on-the-fly #not-first-page
        \fromproperty #'header:instrument
        }
    evenHeaderMarkup = \markup \fill-line {
        \on-the-fly #not-first-page
        \fromproperty #'header:instrument
        \null
        \fromproperty #'header:title
        \null
        \on-the-fly #print-page-number-check-first 
        \fromproperty #'page:page-number-string
        }
    }

\layout {
    pagenumber = yes
    \set Score.markFormatter = #format-mark-box-alphabet
    \override MultiMeasureRest #'expand-limit = #2
    \compressFullBarRests
    \numericTimeSignature
    \context {
        \Staff \remove "Instrument_name_engraver"
        }
    }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%                              Include                                %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\include "english.ly"
\include "../lyInclude/lyInclude/definitions.ily"
\include "../lyInclude/lyInclude/jazzChords.ily"
\include "../lyInclude/lyInclude/copyright.ily"
\include "../settings.ily"
\include "../../header.ily"

partLineBreak = { \break }
partPageBreak = { \pageBreak }
scorePageBreak = { }

\include "../../layout.ily"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%                               Score                                 %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\book {
    \header { instrument = \partAName }
    \score {
        \globalTranspose \partA
        \layout { }
        \midi { }
        }
    }

\book {
    \header { instrument = \partBName }
    \score {
        \globalTranspose \partB
        \layout { }
        \midi { }
        }
    }

\book {
    \header { instrument = \partCName }
    \score {
        \globalTranspose \partC
        \layout { }
        \midi { }
        }
    }

\book {
    \header { instrument = \partDName }
    \score {
        \globalTranspose \partD
        \layout { }
        \midi { }
        }
    }

\book {
    \header { instrument = \partEName }
    \score {
        \partE
        \layout { }
        \midi { }
        }
    }

\book {
    \header { instrument = \partFName }
    \score {
        \globalTranspose \partF
        \layout { }
        \midi { }
        }
    }

\book {
    \header { instrument = \partGName }
    \score {
        \globalTranspose \partG
        \layout { }
        \midi { }
        }
    }

\book {
    \header { instrument = \partHName }
    \score {
        \globalTranspose \partH
        \layout { }
        \midi { }
        }
    }

\book {
    \header { instrument = \partIName }
    \score {
        \globalTranspose \partI
        \layout { }
        \midi { }
        }
    }

\book {
    \header { instrument = \partJName }
    \score {
        \globalTranspose \partJ
        \layout { }
        \midi { }
        }
    }

\book {
    \header { instrument = \partKName }
    \score {
        \globalTranspose \partK
        \layout { }
        \midi { }
        }
    }

\book {
    \header { instrument = \partLName }
    \score {
        \globalTranspose \partL
        \layout { }
        \midi { }
        }
    }

\book {
    \header { instrument = \partMName }
    \score {
        \globalTranspose \partM
        \layout { }
        \midi { }
        }
    }

\book {
    \header { instrument = \partNName }
    \score {
        \globalTranspose \partN
        \layout { }
        \midi { }
        }
    }

\book {
    \header { instrument = \partOName }
    \score {
        \globalTranspose \partO
        \layout { }
        \midi { }
        }
    }

\book {
    \header { instrument = \partPName }
    \score {
        \globalTranspose \partP
        \layout { }
        \midi { }
        }
    }

\book {
    \header { instrument = \partQName }
    \score {
        \globalTranspose \partQ
        \layout { }
        \midi { }
        }
    }

\book {
    \header { instrument = \partRName }
    \score {
        \globalTranspose \partR
        \layout { }
        \midi { }
        }
    }

\book {
    \header { instrument = \partSName }
    \score {
        \globalTranspose \partS
        \layout { }
        \midi { }
        }
    }

\book {
    \header { instrument = \partTName }
    \score {
        \globalTranspose \partT
        \layout { }
        \midi { }
        }
    }

\book {
    \header { instrument = \partUName }
    \score {
        \globalTranspose \partU
        \layout { }
        \midi { }
        }
    }

\book {
    \header { instrument = \partVName }
    \score {
        \globalTranspose \partV
        \layout { }
        \midi { }
        }
    }

\book {
    \header { instrument = \partWName }
    \score {
        \globalTranspose \partW
        \layout { }
        \midi { }
        }
    }

\book {
    \header { instrument = \partXName }
    \score {
        \globalTranspose \partX
        \layout { }
        \midi { }
        }
    }

\book {
    \header { instrument = \partYName }
    \score {
        \globalTranspose \partY
        \layout { }
        \midi { }
        }
    }

\book {
    \header { instrument = \partZName }
    \score {
        \globalTranspose \partZ
        \layout { }
        \midi { }
        }
    }
