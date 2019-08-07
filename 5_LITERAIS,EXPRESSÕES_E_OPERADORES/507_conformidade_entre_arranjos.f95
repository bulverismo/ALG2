program arranjos_conformes

        real, dimension(-1:4,5:10) :: u=1.0
        real, dimension(-1:4,5:10) :: k=9.0
        real, dimension(10,10) :: v=-1.0
        real, parameter :: alpha=5.0
        INTEGER, DIMENSION(4) :: x
            WRITE(*,*) SHAPE(x)                       ! prints "4"
            WRITE(*,*) SHAPE(RESHAPE(x, (/2, 2/)))    ! prints "2 2"
        
        print *,' '
        print *,'u'
        write (*,'(6(F4.1,1X))')u

        print *,'v'
        write (*,'(10(F4.1,1X))')v

        print *,'alpha = ',alpha

        u=u+alpha*v(2:7,1:6)+RESHAPE((/(I,I=1,36)/),(/6,6/))
       
       ! k=RESHAPE((/(1,2,3,4,5,6,7,8,9)/),(/3,3/))
       
        print *,'k' 
        write (*,'(6(F4.1,1X))')k

        print *,' '
        print *,'u'
        print *,'u=u+alpha*v(2:7,1:6)+RESHAPE((/(I,I=1,36)/),(/6,6/))'
        write (*,'(6(F4.1,1X))')u

        ! Observe que os arranjos U e V têm o mesmo número de dimensões (duas), mas o número de elementos em cada dimensão é
        ! diferente: logo esses arranjos não são conformes. Na atribuição a U, note que a expressão
        ! u=u+alpha*v(2:7,1:6)+RESHAPE((/(I,I=1,36)/),(/6,6/))
        ! envolve apenas arrajos que são conformes; U,V(2:7,1:6) e o resultado de
        ! RESHAPE((/(I,I=1,36)/),(/6,6/))
        ! tem, todos eles, duas dimensões, com seis elemntos em cada dimensão.A expressão V(2:7,1:6) envolve o acesso a seções do
        ! arranjo.

end program arranjos_conformes
