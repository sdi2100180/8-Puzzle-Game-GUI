# paths
LIB = ./lib
INCLUDE = ./include
SRC = ./src

# your Operating System (win or linux)
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

# raylib library used based on OS
LIB_RAYLIB = libraylib_linux.a

# determine OS
ifeq ($(OS),win) # Windows
	LDFLAGS += -lgdi32 -lwinmm -lopengl32
	CC = x86_64-w64-mingw32-gcc
	LIB_RAYLIB = libraylib_win.a
else ifeq ($(OS),linux) # Linux
	LDFLAGS += -ldl -lpthread -lGL
	LIB_RAYLIB = libraylib_linux.a
endif

# compile executable
$(EXEC): $(OBJS)
	$(CC) $(OBJS) $(LIB)/$(LIB_RAYLIB) -o $(EXEC) $(LDFLAGS)

# cleaning
PHONY clean:
	rm -f $(OBJS) $(EXEC)

# compile and run for Linux
run: $(EXEC)
	./$(EXEC)