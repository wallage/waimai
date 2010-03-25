greet:people.o mystring.o action.o
	cc -o greet people.o mystring.o action.o
people.o:people.c mystring.h action.h
	cc -c people.c
mystring.o:mystring.c mystring.h
	cc -c mystring.c
action.o:action.c action.h
	cc -c action.c
.PHONY:clean
clean:
	rm -f people.o mystring.o action.o
