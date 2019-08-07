program cmd_where
        real, dimension(4,4) :: arr
        integer ::i 
        
        ! atribui valores pseudo-aleatórios
        ! a arr

        call RANDOM_NUMBER(arr)

        write(*,'(" MATRIZ ALEATORIA:")')

        do i=1,4
                write(*,'(4(F12.8,1X))')arr(i,:)
        end do

        where (arr/=0.)
                arr = 1./arr
        elsewhere
                arr = 1.
        end where

        write(*,'(" MATRIx:")')
        
        do i=1,4
                write(*,'(4(F12.8,1X))')arr(i,:)
        end do
        
end program cmd_where
