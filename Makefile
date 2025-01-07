CXX = g++
CXXFLAGS = -Wall -Wextra -std=c++17

TARGET = main
SRC = main.cpp solution.cpp
HEADERS = solution.h

all: $(TARGET)

$(TARGET): $(SRC) $(HEADERS)
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(SRC)

clean:
	rm -f $(TARGET) *.o
