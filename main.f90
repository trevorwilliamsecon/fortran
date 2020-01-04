program main

implicit none
integer n,i,i2

external square

n = 12

!$OMP PARALLEL PRIVATE(i2)
!$OMP DO
do i=1,n
	call square(i,i2)
	call sleep(3)
enddo
!$OMP ENDDO
!$OMP END PARALLEL

end program main