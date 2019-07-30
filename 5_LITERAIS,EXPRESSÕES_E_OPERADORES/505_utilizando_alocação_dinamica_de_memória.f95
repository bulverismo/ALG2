program alocacao
        integer :: m,n
        real :: soma

        print *,'m=?, n=?'
        read *,m,n
        soma = calcula_soma(m,n)
        print *,'soma= ',soma
contains
        integer function calcula_soma(m,n) result (x)
                integer, intent(in) :: m,n
                real, dimension(:,:), allocatable :: arr
                integer :: i,j

                allocate(arr(0:m-1,0:n-1))
                do j=0,n-1
                        do i=0,m-1
                                arr(i,j) = i+j*m
                        end do
                end do

                x = sum(sqrt(arr))
                deallocate(arr)
         end function calcula_soma

         ! o programa lê duas variáveis, M e N, as quais são transmitidos à função CALCULA_SOMA. Dentro dessa função, é alocado um
         ! arranjo ARR, com duas dimensões, através do comando ALLOCATE(ARR(0:M-1, 0:N-1). A cada elemento do arranjo ARR é
         ! atribuido o resultado da expressão I+J*M, e X recebe o valor da soma das raízes quadradas de cada elemento do arranjo.
         ! Ao final da função, o arranjo ARR pe desalocado. Se, durante a execução desse programa, os valores de M e N forem 4 e 6,
         ! respectivamente, então o programa produzirá a seguinte saída. SOMA = 75.00000

end program alocacao
