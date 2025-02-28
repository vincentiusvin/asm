hi: hi.S
	gcc -c hi.S -o hi.o && ld hi.o -o hi

clean:
	rm *.o
