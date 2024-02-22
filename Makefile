PROGRAM=browser
OBJECTS=browser.o

CC=gcc
CFLAGS=$(shell pkg-config --cflags gtk+-3.0 webkit2gtk-4.1)
CFLAGS+= -Wall -g

LDFLAGS=$(shell pkg-config --libs gtk+-3.0 webkit2gtk-4.1)

all: $(PROGRAM)

browser: $(OBJECTS)
	$(CC) $(OBJECTS) $(LDFLAGS) -o $(PROGRAM)

clean:
	rm -rf $(OBJECTS) $(PROGRAM)

%.o : %.c
	$(CC) $(CFLAGS) -c $<
