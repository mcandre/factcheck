USING: kernel random math ;
IN: factcheck

! A quotation generating a random integer.
: gen-integer ( -- quot: ( -- n ) ) [ random-32 ] ; inline

! A quotation generating a random boolean.
: gen-bool ( -- quot: ( -- ? ) ) [ gen-integer call even? ] ; inline

! quot is a fact to check.
! seq is a sequence of quotations generating random values to pass to the fact.
!
! If the fact holds true for the generated values, print success and return t.
! Otherwise, print the offending values and return f.
: for-all ( quot seq -- ? )
    ! ...
    ;