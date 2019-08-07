program cmd_where
        integer, dimension(0:3,0:3) :: mascara
        real, dimension(4,4) :: arr
        integer :: n,i,j
        
        ! atribui valores pseudo-aleatórios
        ! a arr

        call RANDOM_NUMBER(arr)

        write(*,'(" MATRIZ ALEATORIA:")')

        do i=1,4
                write(*,'(4(F4.2,1X))')arr(i,:)
        end do

        where (arr<0.5)
                mascara=1
        elsewhere
                mascara=0
        end where

        write(*,'(" MATRIZ BINARIA:")')
        
        do i=0,3
                write(*,'(4I2)')mascara(i,:)
        end do
        
end program cmd_where
