program atr_equivalence
        real :: a = 1.0, b = 2.0, c, d, e
        equivalence (a, c) , (b, d)

        e = c+d

        write (*,'(A,F3.1)')'a=',a,'b=',b,'c=',c,'d=',d,'e=',e





end program atr_equivalence
