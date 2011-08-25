USING: kernel random math sequences strings combinators.smart prettyprint ;
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

! ! Transforms a fact so that it operates over a sequence rather than a stack
! : rawfact>fact ( quot -- quot ) [ swap input<sequence ] curry ; inline

! quot is a fact to check.
! seq is a sequence of quotations generating random values to pass to the fact.
!
! If the fact holds true for the generated values, print success and return t.
! Otherwise, print the offending values and return f.
: for-all ( quot seq -- seq )
    ! rawfact generators
    [ call dup . ] map ! rawfact arguments

    drop drop [ 1 2 3 ]

    ! swap ! arguments rawfact
    ! input<sequence

    ! 100 ! rawfact generators 100
    ! [ replicate ]
    ! replicate ! rawfact values
    ! 
    ! .

    ! drop drop [ 1 2 3 ]

    ! swap ! values rawfact
    ! rawfact>fact ! values fact
    ! map ! results

    ! ...
    ;