program atr_intent
contains
        subroutine retira_valor (a,b,c)
                integer, intent(in) :: a
                integer, intent(out) :: b
                integer, intent(inout) :: c
                integer :: i,j
                i = 2*a
                ! erro, b é um argumento out e não
                ! teve um valor atribuido a ele
                ! antes de ser usado
                j = 3*b - i
                c = i+j+c
         end subroutine retira_valor                
end program atr_intent
