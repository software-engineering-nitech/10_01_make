main: main.o myfunc.o
	gcc main.o myfunc.o -o main -lm -L/usr/local/lib -L/usr/local/lib/cv2

main.o: main.c
	gcc -c main.c -I/usr/local/include/opencv2

myfunc.o: myfunc.c
	gcc -c myfunc.c -I/usr/local/include

.PHONY: all clean
all: main
clean:
	rm -f main main.o myfunc.o
