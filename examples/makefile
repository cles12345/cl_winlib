CC = gcc
CFLAGS = -Wall -Werror -g $(INCDIR)
SRC = main.c
OBJ = $(SRC:.c=.o)
SRCDIR = src
BUILDDIR = build
INCDIR = -I../inc/
LIBDIR = ../build
LDLIBS = -L$(LIBDIR)/ -lcl_winlib

all: $(BUILDDIR)/$(OBJ) $(BUILDDIR)/libcl_winlib.a $(BUILDDIR)/example

$(BUILDDIR)/$(OBJ): $(SRCDIR)/$(SRC)
	@mkdir -p $(BUILDDIR)
	$(CC) $(CFLAGS) -c $< -o $@

$(BUILDDIR)/libcl_winlib.a:
	$(MAKE) -C ../

$(BUILDDIR)/example: $(BUILDDIR)/libcl_winlib.a
	$(CC) $(CFLAGS) $(BUILDDIR)/$(OBJ) -o $@ $(LDLIBS)

run: $(BUILDDIR)/example
	$(BUILDDIR)/example

clean:
	rm -rf $(BUILDDIR)

clean_lib:
	rm -rf $(LIBDIR)