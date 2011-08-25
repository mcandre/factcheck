#! /usr/bin/env factor

INCLUDING: factcheck ;
USING: kernel math strings ;
IN: example

: fact-even ( n -- ? ) even? ;

: gen-even ( -- n ) gen-integer dup even? [ ] [ 1 + ] if ;

: bad-fact-number-bool-then-string ( n ? str -- ? ) rot string? swap boolean? and swap number? and ;

: fact-number-bool-then-string ( n ? str -- ? ) string? swap boolean? and swap number? and ;

: main ( -- )
    [ fact-even ] [ gen-even ] for-all

    [ fact-even ] [ gen-integer ] for-all

    [ fact-number-bool-then-string ] [ gen-integer gen-bool gen-string ] for-all

    ;

MAIN: main