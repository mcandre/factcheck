#! /usr/bin/env factor

INCLUDING: factcheck ;
USING: kernel math prettyprint ;
IN: example

: prop-even ( n -- ? ) even? ;

: gen-even ( -- n ) gen-integer dup even? [ ] [ 1 + ] if ;

: main ( -- )
    [ prop-even ] [ gen-even ] for-all? .

    ! ...
    ;

MAIN: main