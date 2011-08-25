#! /usr/bin/env factor

INCLUDING: factcheck ;
USING: kernel math prettyprint ;
IN: example

: prop-even ( -- quot: ( n -- ? ) ) [ even? ] ; inline

: gen-even ( -- quot: ( -- n ) ) [ gen-integer call dup even? [ ] [ 1 + ] if ] ; inline

: main ( -- )
    prop-even { [ gen-even call ] } for-all .

    ! ...
    ;

MAIN: main