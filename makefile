CC = gcc
AR = ar 
CFLAGS = -Wall -Werror -g $(INCDIR)
SRC = main.c
OBJ = $(SRC:.c=.o)
SRCDIR = src
BUILDDIR = build
INCDIR = -Iinc/

all: $(BUILDDIR)/$(OBJ) $(BUILDDIR)/libcl_winlib.a

$(BUILDDIR)/$(OBJ): $(SRCDIR)/$(SRC)
	@mkdir -p $(BUILDDIR)
	$(CC) $(CFLAGS) -c $< -o $@

$(BUILDDIR)/libcl_winlib.a:
	$(AR) rcs $@ $(addprefix $(BUILDDIR)/, $(OBJ))

clean:
	rm -rf $(BUILDDIR)