! Brianna Moffett
! 09.28.2020
! CS 477
! 
! INPUT: n, size of matrix
! OUTPUT: time to run program
!
! PRE: input must be positive
! POST: output in seconds
!
! Source code: https://labmathdu.wordpress.com/gaussian-elimination-without-pivoting/

program gauss
    IMPLICIT NONE

    REAL:: start, finish !time vars

    INTEGER::i,j,n !loop vars

    REAL::s
    REAL,allocatable,DIMENSION(:,:)::a !Allocating space
    REAL,allocatable,DIMENSION(:)::x !Allocating space
    PRINT  '("Enter matrix size...")'
    READ *, n !Reading in matrix size
    CALL cpu_time(start) !Starting timer
    allocate(a(n,n+1)) !Allocating space
    allocate(x(n)) !Allocating space
    CALL RANDOM_NUMBER(a) !Filling matrix
    CALL RANDOM_NUMBER(x) !Filling matrix

    do j=1,n !Calculations
        do i=j+1,n
            a(i,:)=a(i,:)-a(j,:)*a(i,j)/a(j,j)
        end do
    end do

    do i=n,1,-1 !Calculation part 2
        s=a(i,n+1)
        do j=i+1,n
            s=s-a(i,j)*x(j)
        end do
        x(i)=s/a(i,i)
    end do
    CALL cpu_time(finish) !stopping timer
    print '("Time to run is ",f6.3," seconds.")',finish-start !printing formatted time
end program gauss
