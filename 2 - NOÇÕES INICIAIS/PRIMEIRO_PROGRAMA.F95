! Inicio do texto do programa
PROGRAM PRIMEIRO_PROGRAMA

! declaração das variáveis do programa:
! numero de linhas e de colunas da matriz
        INTEGER :: N_LINHAS, N_COLUNAS

! arranjo que contará a matriz
        REAL, DIMENSION (:,:) , ALLOCATABLE :: MATRIZ

! arranjo para armazenar os valores máximos de cada coluna
        REAL, DIMENSION (:) , ALLOCATABLE :: VALORES_MAXIMOS

! variáveis de controle para acessar elementos da matriz
        INTEGER :: I, J

! variáveis lógica usada para verificar a existência do arquivo
        LOGICAL :: EXISTE_ARQUIVO

! inicialmente, consulte se o arquivo MATRIZ.DAT existe; em caso
! afirmativo, a variável lógica EXISTE_ARQUIVO conterá o valor
! .TRUE. após a chamada à função INQUIRE (embutida na linguagem)
        INQUIRE(FILE='MATRIZ.DAT', EXIST=EXISTE_ARQUIVO)
        IF (EXISTE_ARQUIVO) THEN
                ! abra o arquivo MATRIZ.DAT e
                ! associe-o à unidade lógica
                ! de número "1"
                OPEN(UNIT=1, FILE='MATRIZ.DAT')
                
                ! leia o número de linhas e de colunas da matriz
                ! no primeiro registro do arquivo em formato livre (FMT=*)
                READ(UNIT=1, FMT=*) N_LINHAS, N_COLUNAS

                ! aloque a matriz com N_LINHAS linhas
                ! e N_COLUNAS colunas;
                ! aloque também o arranjo VALORES_MAXIMOS contendo
                ! N_COLUNAS elementos
                ALLOCATE(MATRIZ(N_LINHAS, N_COLUNAS))
                ALLOCATE(VALORES_MAXIMOS(N_COLUNAS))

                ! leia os elementos da matriz a partir do segundo registro
                ! do arquivo de dados, em formato livre
                DO I=1,N_LINHAS
                        READ(1,FMT=*)MATRIZ(I,:)
                END DO

                ! feche o arquivo de dados
                CLOSE(UNIT=1)

                ! determine o valor máximo de cada coluna da matriz chamando
                ! a sub-rotina MAXIMO_COLUNAS
                CALL MAXIMO_COLUNAS(N_LINHAS, N_COLUNAS, MATRIZ, VALORES_MAXIMOS)

                ! exiba os valores maximos no dispositvo padrão de saída,
                ! o monitor de video
                PRINT *,'   VALORES MÁXIMOS:'
                PRINT *,'   COLUNA  |  VALOR MÁXIMO'
                DO I=1,N_COLUNAS
                        WRITE(*,*)I,VALORES_MAXIMOS(I)
                END DO

                ! desaloque a matriz e o arranjo
                ! alocados anteriormente
                DEALLOCATE(MATRIZ, VALORES_MAXIMOS)

        ELSE
                ! o arquivo MATRIZ.DAT não existe ou não foi localizado
                ! exiba mensagem de erro
                PRINT *,'Arquivo MATRIZ.DAT não pode ser aberto'

        END IF

        ! fim dos comandos executáveis no programa principal , isto é, fim do programa

CONTAINS

        ! declaração de uma sub-rotina 
        ! interna ao programa principal
        SUBROUTINE MAXIMO_COLUNAS(M,N,A,MAXIMOS)
        
                ! parâmetros de entrada da sub-rotina
                INTEGER, INTENT(IN) :: M,N
                REAL, DIMENSION(M,N), INTENT(IN) :: A
                
                ! parâmetros de saída da sub-rotina
                REAL, DIMENSION(N), INTENT(OUT) :: MAXIMOS

                ! variável local da sub-rotina
                INTEGER :: I

                DO I=1,N
                        MAXIMOS(I) = MAXVAL(A(1:M,I))
                END DO

                ! fim do texto da sub-rotina
        END SUBROUTINE MAXIMO_COLUNAS
                        
! fim do texto do programa
END PROGRAM PRIMEIRO_PROGRAMA
