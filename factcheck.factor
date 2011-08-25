USING: kernel random math sequences strings ;
IN: factcheck

! A quotation generating a random integer.
: gen-integer ( -- quot: ( -- n ) ) [ random-32 ] ; inline

! A quotation generating a random boolean.
: gen-bool ( -- quot: ( -- ? ) ) [ gen-integer call even? ] ; inline

! A quotation generating a random byte.
: gen-byte ( -- quot: ( -- n ) ) [ gen-integer call 256 mod ] ; inline

! A quotation generating a random character.
: gen-char ( -- quot: ( -- ch ) ) [ gen-integer call 128 mod ] ; inline

! A quotation generating a random sequence.
: gen-seq ( quot: ( -- obj ) -- quot: ( -- seq ) ) [ gen-integer call 100 mod swap replicate ] ; inline

! A quotation generating a random string.
: gen-string ( -- str ) [ gen-char gen-seq call >string ] ; inline

! quot is a fact to check.
! seq is a sequence of quotations generating random values to pass to the fact.
!
! If the fact holds true for the generated values, print success and return t.
! Otherwise, print the offending values and return f.
: for-all ( quot seq -- ? )
    ! ...
    ;