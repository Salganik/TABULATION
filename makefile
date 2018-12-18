files=$(wildcard *.f90)
obj=$(patsubst %.f90, %.o, $(files))


main: $(obj)                                                          
	gfortran $^ -o $@
result: main
	./main <input> result
%.o: %.f90
	gfortran -c $^ -o $@  
$@ : myprec.mod
myprec.mod myprec.o: myprec.f90
	 gfortran -c -Wall myprec.f90
resplt: 
	gnuplot probtask.gnu
clean:
	rm -f *.o main
view:
	cat result

