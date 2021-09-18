LIBNAME = so1
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

FILES = so1.o 

# For Linux
linux:
	make so1.so "DLLFLAGS = -shared -fPIC"

# For Mac OS
macosx:
	make so1.so "DLLFLAGS = -bundle -undefined dynamic_lookup"

so1.so: $(FILES)
	env $(CC) $(DLLFLAGS) -undefined dynamic_lookup $(FILES) -o so1.so

$(FILES): makefile

test: test.lua re.lua lpeg.so
	./test.lua

clean:
	rm -f $(FILES) so1.so


so1.o: so1.c 


