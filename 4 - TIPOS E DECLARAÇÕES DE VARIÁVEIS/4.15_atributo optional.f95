subroutine retira_valor(a,b,c)
        integer, intent(in) :: a
        integer, intent(out) :: b
        integer, intent(inout), optional :: c
        integer :: i, j

        i = 2*a
        b = 3*a-i
        c = i+j+c
end subroutine retira_valor

program atr_optional
        integer :: u = 1, v, w = 3.0
        external retira_valor
                call retira_valor(a=u,b=v)
        ! Quando se utilizam argumentos do tipo OPTIONAL, é necessário
        ! fazer uma associação entre o nome do argumento e o nome da
        ! variável transmitida ao subprograma, caso o número de
        ! argumentos transmitidos seja menor do que o número de
        ! argumentos declarados no subprograma.
        ! REVISAR - NÃO ENTENDI BEM
end program atr_optional
