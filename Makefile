.PHONY: all clean

all: badapple

sleep.o: sleep.s
	as -o $@ $<

termsize.o: termsize.s
	as -o $@ $<

badapple: badapple.b sleep.o termsize.o
	bust badapple.b sleep.o termsize.o -o badapple

clean:
	rm -f badapple sleep.o termsize.o
