      program formato_fixo
C     este e um programa de teste, C no comeco da linha indica
C     comentario, + na coluna 6 indica que continua o comando da linha
C     da cima, arquivo tem que ter a extensão .f para compilador
C     entender que esta no formato fixo
      integer :: i,j
      real, ! este é um comentario
     +dimension(200,300) :: matriz
      matriz = 100.0
      end program formato_fixo
