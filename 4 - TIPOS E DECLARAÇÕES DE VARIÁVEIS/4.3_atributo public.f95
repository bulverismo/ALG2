MODULE modulo_a
      INTEGER, PUBLIC :: A, B = 3
      INTEGER C, D
      PUBLIC C
CONTAINS
      SUBROUTINE SUB_1
              C = 2
              A = B+C
              D = 2*A
      END SUBROUTINE
END MODULE modulo_a

PROGRAM PRINCIPAL
        USE modulo_a
        IMPLICIT NONE
        
        A = B+C
        
        CALL SUB_1

        D = 5+D
        print *,a,b,c,d
END PROGRAM PRINCIPAL

