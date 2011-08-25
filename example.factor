#! /usr/bin/env factor

INCLUDING: factcheck ;
USING: kernel math prettyprint ;
IN: example

! : gen-even ( -- n )

: main ( -- )
    gen-char call .

    ! ...

    ! even?
    ! gen-even

    ! ...
    ;

MAIN: main