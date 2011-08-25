USING: kernel random math sequences strings fry prettyprint ;
IN: factcheck

! A quotation generating a random integer.
: gen-integer ( -- n ) random-32 ;

! A quotation generating a random boolean.
: gen-bool ( -- ? ) gen-integer even? ;

! A quotation generating a random byte.
: gen-byte ( -- n ) gen-integer 256 ;

! A quotation generating a random character.
: gen-char ( -- ch ) gen-integer 128 mod ;

! A quotation generating a random sequence.
: gen-seq ( quot: ( -- obj ) -- seq ) gen-integer 100 mod swap replicate ;

! A quotation generating a random string.
: gen-string ( -- str ) [ gen-char ] gen-seq >string ;

! If the fact holds true for the generated values, print success and return t.
! Otherwise, print the offending values and return f.
: for-all? ( fact: ( ..a -- ? ) generator: ( -- ..a ) -- ? ) swap [ 100 iota ] 2dip '[ drop @ @ not ] find drop not ; inline