program ex3
        implicit none
        real :: a,b,c,d,x


        
        print *,'calcularemos x = (-b+((c-d)**3))/(a+b), &
                        logo (a+b) /= 0'
        print *,'digite a:'
        read *,a
        print *,'digite b:'
        read *,b
        print *,'digite c:'
        read *,c
        print *,'digite d:'
        read *,d

        if ((a+b)==0) then
                print *,'a+b = 0, logo indefinição'
        else
                x = (-b+((c-d)**3))/(a+b)
                print *,'resultado = ',x
        end if

end program ex3
