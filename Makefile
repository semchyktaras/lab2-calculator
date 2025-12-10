CC=g++
CFLAGS=-Iinclude -Wall -Wextra -O2

SRC=src/add.cpp src/sub.cpp
OBJ=$(SRC:.cpp=.o)
EXEC=app
LIB=libcalc.a

all: $(LIB) $(EXEC)

$(LIB): $(OBJ)
	ar rcs $@ $^

# Виконуваний файл
$(EXEC): src/main.cpp $(LIB)
	$(CC) src/main.cpp -L. -lcalc $(CFLAGS) -o $@

%.o: %.cpp
	$(CC) -c $< -o $@ $(CFLAGS)

# Очищення
clean:
	rm -f $(OBJ) $(LIB) $(EXEC)

