program mem_cache
        integer :: n,i,t0,t1! t_coluna, t_linha, usec
        real :: start, finish, t_coluna, t_linha
        real, dimension(:,:), allocatable :: a
        ! external usec 
        print *,'N=?'; read *,n
        allocate(a(n,n))
        !t0 = usec()
        call cpu_time(start)
        do j=1,n
                do i=1,n
                        a(i,j) = log(real((j-1)*n+i))
                end do
        end do
        call cpu_time(finish)
        !t1 = usec()
        !t_coluna = ti-t0
        t_coluna = finish-start
        deallocate(a)
        allocate(a(n,n))
        !t0 = usec()
        call cpu_time(start)
        do i=1,n
                do j=1,n
                        a(i,j) = log(real((j-1)*n+1))
                end do
        end do

        !t1 = usec()
        !t_linha = t1-t0
        call cpu_time(finish)
        t_linha = finish-start
        deallocate(a)

        !write(*,'("T_COLUNA= ",I32," microssegundos")')T_COLUNA
        !write(*,'("T_LINHA= ",I32," microssegundos")')T_LINHA

        write(*,'("T_COLUNA= ",f32.28," microssegundos")')T_COLUNA
        write(*,'("T_LINHA= ",f32.26," microssegundos")')T_LINHA


        ! O programa acima acessa o arranjo A por colunas,inicialmente, e por linhas, O arranjo A é alocado dinamicamente, de forma
        ! facilitar a execução do programa para qualquer tamanho de arranjo,N; ele também é desalocado ao final de cada conjunto de
        ! laços a fim de garantir que ele não exista mais na memória(nem tampouco na memória cache).A função USEC() retorna o tempo
        ! de execução em microssegundos e é dependente de implementação. Os resultados ...
        ! ... foram obtidos apartir do meu notebook acer aspire 5542,compilador gfortran
        ! o código está diferente do livro por conta do comando USEC()
        ! não ter funcionado no meu ambiente

        !resutado dos testes no meu notebook

        !N=?
        !1000
        !T_COLUNA= 0.044517997652292251586914062500 microssegundos
        !T_LINHA= 0.038848005235195159912109375000 microssegundos
        
        !N=?
        !2000
        !T_COLUNA= 0.156690001487731933593750000000 microssegundos
        !T_LINHA= 0.152297005057334899902343750000 microssegundos
        
        !N=?
        !4000
        !T_COLUNA= 0.609027981758117675781250000000 microssegundos
        !T_LINHA= 0.612891018390655517578125000000 microssegundos

        ! N=?
        !8000
        !T_COLUNA= 2.415160894393920898437500000000 microssegundos
        !T_LINHA= 2.971668243408203125000000000000 microssegundos
        
        ! N=?
        !10000
        !T_COLUNA= 3.824631214141845703125000000000 microssegundos
        !T_LINHA= 6.070072650909423828125000000000 microssegundos
        
        !N=?
        !15000
        !T_COLUNA=   8.6884908676147460937500000000 microssegundos
        !T_LINHA=    18.76394653320312500000000000 microssegundos

        ! Conclusão: acessar as matrizes em ordem de colunas no fortran evita o cache-miss

end program mem_cache
