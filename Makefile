CFLAGS=-std=c++11
LFLAGS=
INC=-I./include
SRC=./src
TARGET=svr_test

SRC_CPP=$(wildcard ${SRC}/*.cpp)
OBJ_CPP=$(SRC_CPP:.cpp=.o)

#test:
	#@echo $(OBJ_CPP)

all: $(TARGET)

$(SRC)/%.o : $(SRC)/%.cpp
	@echo "Compiling $< ===> $@"
	@g++ -c $< $(CFLAGS) $(INC) -o $@

$(TARGET) : $(OBJ_CPP)
	@echo "Linking $@..."
	@g++ -o $(TARGET) $(OBJ_CPP) $(LFLGAS)

clean:
	@rm -rf $(TARGET) $(OBJ)

