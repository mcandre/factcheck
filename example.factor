#! /usr/bin/env factor

INCLUDING: factcheck ;
USING: kernel math prettyprint ;
IN: example

! : gen-even ( -- n )

: main ( -- )
    gen-byte call .

    ! ...

    ! even?
    ! gen-even

    ! ...
    ;

MAIN: main