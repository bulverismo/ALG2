program comum
        real :: a = 1.0,b = 2.0, c
        COMMON /BLOCO1/ A, B
                CALL SUB
end program comum

subroutine sub
        real :: u, v
        COMMON /BLOCO1/ u, v
                print *,'u=',u,' v=',v
end subroutine sub

        ! Um bloco COMMON, de nome BLOCO1, foi declarado no programa principal. Esse bloco contém duas variáveis do tipo REAL,A e B,
        ! as quais foram inicializadas com os valores 1.0 e 2.0, respectivamente. Na sub-rotina SUB, são declarados duas variáveis
        ! REAL, chamadas U e V, as quais estão associadas ao mesmo bloco COMMON BLOCO1. Assim, A e U são dois nomes diferentes para
        ! o mesmo endereço na memória; o mesmo ocorre com B e V. Logo, ao se executar esse código, serão impressos os valores U=1.0
        ! e V=2.0
