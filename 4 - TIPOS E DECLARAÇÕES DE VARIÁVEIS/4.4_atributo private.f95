module modulo_b
      integer, private :: a, b = 3
      integer c, d
      private c
contains
      subroutine sub_1
              c = 2
              a = b+c
              d = 2*a
      end subroutine sub_1
end module modulo_b

program principal
        use modulo_b
        implicit none

        a = b + c       ! erro, variáveis a, b e c
                        ! só existem dentro do
                        ! módulo module_b
                        ! por conta disso este programa
                        ! não compila
        call sub_1
        d = 5+d         ! correto

end program principal
