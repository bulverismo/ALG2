program exercicios
        ! nomes validos de variáveis em fortran 95
        integer :: t=1
        integer :: umnumerogrande, adata, UM_NUMERO_IMENSO
                ! tempo.minuto,
                ! 10vezes, Program,
                ! outro-numero
        real :: x=10.0, y=0.01, z=0.5
        integer :: i=10, j=25, k=3, m=2
        
        
        ! exercicio 3 - errado
        !        integer, dimension(3) :: coordenadas, horario, data1
        !character(len=22) :: hora_completa 
        
        ! exercicio 3 corrigido
        ! tipos de dados definidos pelo usuario
        type coord
                real :: x,y,z
        end type
        type horario
                integer :: hora,minuto,segundo
        end type
        type data
                integer :: dia,mes,ano
        end type data
        type data_e_hora
                type(data) :: a_data
                type(horario) :: a_hora
        end type data_e_hora
        
        ! exercicio 4
        ! rank          2       2       3       2
        ! shape         10,20   10,16   6,3,4   10,14
        ! tamanho       200     160     72      140

        ! exercicio 2

        print *,i+j+k/i         ! como somente tem valores inteiros a parte real é suprimida
        print *,z*x/10+k        ! como tem um real, o valor conver para real
        print *,z*k+z*j+z*i     ! como tem um real no meio resulta em real
        print *,i*y-i/m         ! resulta em real -4,9




        
end program exercicios
