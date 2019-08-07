program sec_irreg
        integer :: i,j
        real, dimension (4,4) :: a
        real, dimension (2,2) :: b
        real, dimension (3,2) :: c
        integer, dimension (2) :: par=(/2,4/), impar=(/1,3/)
        integer, dimension (3) :: rep=(/2,4,2/)

        do j=1,4
                do i=1,4
                        a(i,j)=(i-1)*4+j
                end do
        end do

        b = a(par,impar)
        c = a(rep,1:3:2)

        write(*,'(4("A(",I1,",",I1,")=", &
                F4.1,1X))')(i,j,a(i,:),i=1,4)
        write(*,'(2("B(",I1,",",I1,")=", &
                F4.1,1X))')(i,j,b(i,:),i=1,2)
        write(*,'(2("C(",I1,",",I1,")=", &
                F4.1,1X))')(i,j,c(i,:),i=1,3)


        ! não esta compilando, não consegui achar o defeito!
end program sec_irreg

