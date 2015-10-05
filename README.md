# lyTemplates-multipart

[LilyPond](http://lilypond.org) template for creating music with multiple parts.
Designed for building jazz big band and orchestral scores and extracting parts
from the same music source file.

## Overview

It is intended to be used as a plug-in to the [music repository][musicrepo].
Here we barrow inspiration from MVC (Model-View-Controller) frameworks to
separate our music, from our layout templates, from our compilation process. If
you're familiar with LilyPond, go at it. Otherwise, head over to that repository
for more explicit instructions.

[musicrepo]: https://github.com/brianclements/lyTemplates-music

## Requirements
Lilypond 2.16.2

## Install

1. First, start with the [music repository][musicrepo] instructions if you
   haven't already.

2. Clone this repo, using submodules, as a template plugin for the [music
   repository][musicrepo].
    * `cd piece-name`
    * `git submodule add git@github.com:brianclements/lyTemplates-multipart.git template`
        * we have nested submodules so
            * `cd template`
            * `git submodule update --init`

3. Assuming you've already designed your layout in `layout.ily` and all your
   music accordingly in `music.ily`, you can now `lilypond score.ly` or
   `lilypond parts.ly`.

## Contribution
Suggestions and contributions are always welcome and appreciated.

## Documentation

More detailed documentation is in the works to explain more advanced
configurations and the reasoning behind some design choices.

## License
lyTemplates-multipart is licensed under the GPL3 license.

## Changelog

### Version 1.0.0

2015.10.04

* Complete re-working of layout and file structure.
    * Separate staff layout into it's own section and put it in it's own
      repository along with the music.
    * Music/layout are separate repository to which single/multipart layouts can
      plug into using git submodules.
* Character/format/code cleanup from legacy code
* Apply GPL3 license
* upgrade to LilyPond 2.16.2
