# paths
LIB = ./lib
INCLUDE = ./include
SRC = ./src

# compiler
CC = gcc

# compiler options
CFLAGS = -Wall -Werror -g3 -I$(INCLUDE)
LDFLAGS = -lm -ldl -lpthread -lGL

# .o files
OBJS = $(SRC)/PriorityQueue.o $(SRC)/puzzle.o $(SRC)/interface.o $(SRC)/main.o

# executable file
EXEC = 8PuzzleGame

# compile executable for Linux
$(EXEC): $(OBJS)
	$(CC) $(OBJS) $(LIB)/libraylib_linux.a -o $(EXEC) $(LDFLAGS)

# cleaning
PHONY clean:
	rm -f $(OBJS) $(EXEC)

# compile and run
run: $(EXEC)
	./$(EXEC)