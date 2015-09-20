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
%%%%%                        Multi-Part Parts                             %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\version "2.16.2"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%                              Settings                               %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#(set-global-staff-size 20)
#(ly:set-option 'relative-includes #t)

partLineBreak = { \break }
partPageBreak = { \pageBreak }
scorePageBreak = { }

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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%                              Include                               %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\include "english.ly"
\include "../lyInclude/lyInclude/definitions.ily"
\include "../lyInclude/lyInclude/jazzChords.ily"
\include "../../layout.ily"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%                               Score                                 %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\book {
    \header { instrument = \partAName }
    \score {
        \partA
        \layout {
            pagenumber = yes
            \set Score.markFormatter = #format-mark-circle-barnumbers
            \numericTimeSignature
            \context {
                \Staff \remove "Instrument_name_engraver"
                }
            }
        \midi { }
        }
    }
