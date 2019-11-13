ARCH=
CFLAGS=
CROSS_COMPILE=arm-linux-gnueabihf-gcc
GCC=$(CROSS_COMPILE) $(CFLAGS)

all: ina219 main
	$(GCC) main.o ina219.o -lm -o ina219-tool   

ina219: ina219.c ina219.h
	$(GCC) ina219.c -lm -o ina219.o -c 

main: main.c
	$(GCC) main.c -o main.o -c

clean:
	rm *.o ina219-tool