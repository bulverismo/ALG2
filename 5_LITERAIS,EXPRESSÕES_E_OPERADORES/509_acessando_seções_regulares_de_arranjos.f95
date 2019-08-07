program access_arr
        real, dimension(:,:), allocatable :: arr
        integer :: n,i,j

        print *,'n=?'
        read *,n
        allocate(arr(n,n))
        ! atribui valores pseudo-aleatórios e ARR
        call random_number(arr(:,1:3))
        arr(:,4)=0.0

        do j=1,3
                if(product(arr(:,j))<=0.5) then
                        arr(:,4)=arr(:,4)+arr(:,j)
                end if
        end do

        do i=1,n
                write(*,*)arr(i,:)
        end do

        deallocate(arr)

end program access_arr
