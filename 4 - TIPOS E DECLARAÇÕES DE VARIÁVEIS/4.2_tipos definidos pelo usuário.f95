program tipos
        type VETOR_3D
                real :: x, y, z
        end type VETOR_3D

        type PLANO
                type  (VETOR_3D) :: normal
                real :: D
        end type PLANO

        type (VETOR_3D) :: u, v, w

        type (PLANO) :: FACE
end program tipos
