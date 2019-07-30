program atr_namelist
        integer a, b
        character, dimension(4) :: nome
        real x

        NAMELIST /LISTA1/ nome, a, b, x

        read(*, LISTA1)

        print *,nome
        print *,a
        print *,b
        print *,x

        ! Uma NAMELIST chama LISTA1 foi declarada, a qual contém quatro variáveis, NOME, A, B e X. Ao executar o comando de leitura
        ! READ, o computador vai esperar que sejam inseridos (através do teclado, usualmente), um conjunto de quatro caracateres,
        ! dois valores inteiros e um valor real,os quais serão armazenados nas variáveis listadas na NAMELIST.



end program atr_namelist
