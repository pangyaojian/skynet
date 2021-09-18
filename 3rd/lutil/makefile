LIBNAME = lutil
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

FILES = lutil.o 

# For Linux
linux:
	make lutil.so "DLLFLAGS = -shared -fPIC"

# For Mac OS
macosx:
	make lutil.so "DLLFLAGS = -bundle -undefined dynamic_lookup"

lutil.so: $(FILES)
	env $(CC) $(DLLFLAGS) -undefined dynamic_lookup $(FILES) -o lutil.so

$(FILES): makefile


clean:
	rm -f $(FILES) lutil.so


lutil.o: lutil.c 


