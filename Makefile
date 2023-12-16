flags = -g3 -Wall
oglflags = -L/usr/lib64 -lGLEW -lGL -lX11 -lGLU -lglut

all: main.o vector3f.o
	gcc $(flags) main.o vector3f.o app3d.o -o run $(oglflags) 

main.o: main.c vector3f.o app3d.o
	gcc $(flags) -c main.c -o main.o

app3d.o: app3d.c app3d.h
	gcc $(flags) -c app3d.c -o app3d.o

vector3f.o: vector3f.c vector3f.h
	gcc $(flags) -c vector3f.c -o vector3f.o

clean:
	rm -f run
	rm -f *.o
