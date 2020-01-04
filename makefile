objects = main.o square.o

main: $(objects)
	gfortran -o main -fopenmp $(objects)
square.o: square.f90
	gfortran -c square.f90
main.o: main.f90
	gfortran -c -fopenmp main.f90

clean:
	rm $(objects)
	rm main