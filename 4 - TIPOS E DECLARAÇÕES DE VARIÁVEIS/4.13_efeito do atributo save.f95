program atributo_save
        call sub
        call sub
contains
        subroutine sub
                integer, save :: a = 0
                a = a+1
                print *,'a = ',a
                                ! observe que a variável A só existe dentro da sub-rotina SUB porém seu valor é preservado ao longo
                                ! da execução do programa.
                                ! Como ela continha inicialmente o valor 0, a primeira chamada à sub-rotina SUB fez com que nela
                                ! fosse armazenado 1 (o resultado da expressão A+1). Esse valor continua armazenado na memória do
                                ! computador, de tal forma que, quando SUB é chamado pela segunda vez, a execução do comando A = A+1
                                ! resulta no valor 2 sendo armazenado em A.
         end subroutine sub
end program atributo_save
