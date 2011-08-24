#! /usr/bin/env factor

INCLUDING: factcheck ;
USING: math prettyprint ;
IN: example

! : gen-even ( -- n )

: main ( -- )
    gen-integer apply .

    ! ...

    ! even?
    ! gen-even

    ! ...
    ;

MAIN: main