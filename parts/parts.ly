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
    \bookOutputName \partAName
    \score {
        \globalTranspose {
            \removeWithTag #'concert \partA
            }
        \layout { }
        }
    \score {
        \globalTranspose {
            \removeWithTag #'transposed \partA
            }
        \midi { }
        }
    }

\book {
    \header { instrument = \partBName }
    \bookOutputName \partBName
    \score {
        \globalTranspose {
            \removeWithTag #'concert \partB
            }
        \layout { }
        }
    \score {
        \globalTranspose {
            \removeWithTag #'transposed \partB
            }
        \midi { }
        }
    }

\book {
    \header { instrument = \partCName }
    \bookOutputName \partCName
    \score {
        \globalTranspose {
            \removeWithTag #'concert \partC
            }
        \layout { }
        }
    \score {
        \globalTranspose {
            \removeWithTag #'transposed \partC
            }
        \midi { }
        }
    }

\book {
    \header { instrument = \partDName }
    \bookOutputName \partDName
    \score {
        \globalTranspose {
            \removeWithTag #'concert \partD
            }
        \layout { }
        }
    \score {
        \globalTranspose {
            \removeWithTag #'transposed \partD
            }
        \midi { }
        }
    }

\book {
    \header { instrument = \partEName }
    \bookOutputName \partEName
    \score {
        \globalTranspose {
            \removeWithTag #'concert \partE
            }
        \layout { }
        }
    \score {
        \globalTranspose {
            \removeWithTag #'transposed \partE
            }
        \midi { }
        }
    }

\book {
    \header { instrument = \partFName }
    \bookOutputName \partFName
    \score {
        \globalTranspose {
            \removeWithTag #'concert \partF
            }
        \layout { }
        }
    \score {
        \globalTranspose {
            \removeWithTag #'transposed \partF
            }
        \midi { }
        }
    }

\book {
    \header { instrument = \partGName }
    \bookOutputName \partGName
    \score {
        \globalTranspose {
            \removeWithTag #'concert \partG
            }
        \layout { }
        }
    \score {
        \globalTranspose {
            \removeWithTag #'transposed \partG
            }
        \midi { }
        }
    }

\book {
    \header { instrument = \partHName }
    \bookOutputName \partHName
    \score {
        \globalTranspose {
            \removeWithTag #'concert \partH
            }
        \layout { }
        }
    \score {
        \globalTranspose {
            \removeWithTag #'transposed \partH
            }
        \midi { }
        }
    }

\book {
    \header { instrument = \partIName }
    \bookOutputName \partIName
    \score {
        \globalTranspose {
            \removeWithTag #'concert \partI
            }
        \layout { }
        }
    \score {
        \globalTranspose {
            \removeWithTag #'transposed \partI
            }
        \midi { }
        }
    }

\book {
    \header { instrument = \partJName }
    \bookOutputName \partJName
    \score {
        \globalTranspose {
            \removeWithTag #'concert \partJ
            }
        \layout { }
        }
    \score {
        \globalTranspose {
            \removeWithTag #'transposed \partJ
            }
        \midi { }
        }
    }

\book {
    \header { instrument = \partKName }
    \bookOutputName \partKName
    \score {
        \globalTranspose {
            \removeWithTag #'concert \partK
            }
        \layout { }
        }
    \score {
        \globalTranspose {
            \removeWithTag #'transposed \partK
            }
        \midi { }
        }
    }

\book {
    \header { instrument = \partLName }
    \bookOutputName \partLName
    \score {
        \globalTranspose {
            \removeWithTag #'concert \partL
            }
        \layout { }
        }
    \score {
        \globalTranspose {
            \removeWithTag #'transposed \partL
            }
        \midi { }
        }
    }

\book {
    \header { instrument = \partMName }
    \bookOutputName \partMName
    \score {
        \globalTranspose {
            \removeWithTag #'concert \partM
            }
        \layout { }
        }
    \score {
        \globalTranspose {
            \removeWithTag #'transposed \partM
            }
        \midi { }
        }
    }

\book {
    \header { instrument = \partNName }
    \bookOutputName \partNName
    \score {
        \globalTranspose {
            \removeWithTag #'concert \partN
            }
        \layout { }
        }
    \score {
        \globalTranspose {
            \removeWithTag #'transposed \partN
            }
        \midi { }
        }
    }

\book {
    \header { instrument = \partOName }
    \bookOutputName \partOName
    \score {
        \globalTranspose {
            \removeWithTag #'concert \partO
            }
        \layout { }
        }
    \score {
        \globalTranspose {
            \removeWithTag #'transposed \partO
            }
        \midi { }
        }
    }

\book {
    \header { instrument = \partPName }
    \bookOutputName \partPName
    \score {
        \globalTranspose {
            \removeWithTag #'concert \partP
            }
        \layout { }
        }
    \score {
        \globalTranspose {
            \removeWithTag #'transposed \partP
            }
        \midi { }
        }
    }

\book {
    \header { instrument = \partQName }
    \bookOutputName \partQName
    \score {
        \globalTranspose {
            \removeWithTag #'concert \partQ
            }
        \layout { }
        }
    \score {
        \globalTranspose {
            \removeWithTag #'transposed \partQ
            }
        \midi { }
        }
    }

\book {
    \header { instrument = \partRName }
    \bookOutputName \partRName
    \score {
        \globalTranspose {
            \removeWithTag #'concert \partR
            }
        \layout { }
        }
    \score {
        \globalTranspose {
            \removeWithTag #'transposed \partR
            }
        \midi { }
        }
    }

\book {
    \header { instrument = \partSName }
    \bookOutputName \partSName
    \score {
        \globalTranspose {
            \removeWithTag #'concert \partS
            }
        \layout { }
        }
    \score {
        \globalTranspose {
            \removeWithTag #'transposed \partS
            }
        \midi { }
        }
    }

\book {
    \header { instrument = \partTName }
    \bookOutputName \partTName
    \score {
        \globalTranspose {
            \removeWithTag #'concert \partT
            }
        \layout { }
        }
    \score {
        \globalTranspose {
            \removeWithTag #'transposed \partT
            }
        \midi { }
        }
    }

\book {
    \header { instrument = \partUName }
    \bookOutputName \partUName
    \score {
        \globalTranspose {
            \removeWithTag #'concert \partU
            }
        \layout { }
        }
    \score {
        \globalTranspose {
            \removeWithTag #'transposed \partU
            }
        \midi { }
        }
    }

\book {
    \header { instrument = \partVName }
    \bookOutputName \partVName
    \score {
        \globalTranspose {
            \removeWithTag #'concert \partV
            }
        \layout { }
        }
    \score {
        \globalTranspose {
            \removeWithTag #'transposed \partV
            }
        \midi { }
        }
    }

\book {
    \header { instrument = \partWName }
    \bookOutputName \partWName
    \score {
        \globalTranspose {
            \removeWithTag #'concert \partW
            }
        \layout { }
        }
    \score {
        \globalTranspose {
            \removeWithTag #'transposed \partW
            }
        \midi { }
        }
    }

\book {
    \header { instrument = \partXName }
    \bookOutputName \partXName
    \score {
        \globalTranspose {
            \removeWithTag #'concert \partX
            }
        \layout { }
        }
    \score {
        \globalTranspose {
            \removeWithTag #'transposed \partX
            }
        \midi { }
        }
    }

\book {
    \header { instrument = \partYName }
    \bookOutputName \partYName
    \score {
        \globalTranspose {
            \removeWithTag #'concert \partY
            }
        \layout { }
        }
    \score {
        \globalTranspose {
            \removeWithTag #'transposed \partY
            }
        \midi { }
        }
    }

\book {
    \header { instrument = \partZName }
    \bookOutputName \partZName
    \score {
        \globalTranspose {
            \removeWithTag #'concert \partZ
            }
        \layout { }
        }
    \score {
        \globalTranspose {
            \removeWithTag #'transposed \partZ
            }
        \midi { }
        }
    }
