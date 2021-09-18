LIBNAME = lkcp
LUADIR = ../lua/

COPT = -O2
# COPT = -DLPEG_DEBUG -g

CWARNS = -Wall -Wextra -pedantic \
	-Waggregate-return \
	-Wcast-align \
	-Wcast-qual \
	-Wdisabled-optimization \
	-Wpointer-arith \
	-Wshadow \
	-Wsign-compare \
	-Wundef \
	-Wwrite-strings \
	-Wbad-function-cast \
	-Wdeclaration-after-statement \
	-Wmissing-prototypes \
	-Wnested-externs \
	-Wstrict-prototypes \
# -Wunreachable-code \


CFLAGS = $(CWARNS) $(COPT) -std=c99 -I$(LUADIR) -fPIC
CC = gcc

FILES = lkcp.o ikcp.o

# For Linux
linux:
	make lkcp.so "DLLFLAGS = -shared -fPIC"

# For Mac OS
macosx:
	make lkcp.so "DLLFLAGS = -bundle -undefined dynamic_lookup"

lkcp.so: $(FILES)
	env $(CC) $(DLLFLAGS) -undefined dynamic_lookup $(FILES) -o lkcp.so

$(FILES): makefile


clean:
	rm -f $(FILES) lkcp.so


lkcp.o: lkcp.c 
ikcp.o: ikcp.c ikcp.h


