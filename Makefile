# paths
LIB = ./lib
INCLUDE = ./include
SRC = ./src

# default OS is Linux
OS = win

# compiler
CC = gcc

# compiler options
CFLAGS = -Wall -Werror -g3 -I$(INCLUDE) -I$(SRC)
LDFLAGS = -lm

# .o files
OBJS = $(SRC)/PriorityQueue.o $(SRC)/puzzle.o $(SRC)/interface.o $(SRC)/main.o

# executable file
EXEC = 8PuzzleGame

# raylib library
LIB_RAYLIB = libraylib_linux.a

# determine OS
ifeq ($(OS),win) # Windows
	LDFLAGS += -lgdi32 -lwinmm -lopengl32
	CC = x86_64-w64-mingw32-gcc
	LIB_RAYLIB = libraylib_win.a
else ifeq ($(OS),linux) # Linux
	LDFLAGS += -ldl -lpthread -lGL
	LIB_RAYLIB = libraylib_linux.a
else ifeq ($(OS),mac) # macOS
	LDFLAGS += -framework OpenGL -framework IOKit -framework Cocoa
	LIB_RAYLIB = libraylib_macos.a
endif

# compile executable
$(EXEC): $(OBJS)
	$(CC) $(OBJS) $(LIB)/$(LIB_RAYLIB) -o $(EXEC) $(LDFLAGS)

# cleaning
PHONY clean:
	rm -f $(OBJS) $(EXEC)

# compile and run
run: $(EXEC)
	./$(EXEC)