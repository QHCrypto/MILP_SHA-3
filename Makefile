CXX = g++
CXXFLAGS = -O3 -std=c++17
GUROBI_INC = $(GUROBI_HOME)/include
GUROBI_LIB = $(GUROBI_HOME)/lib
INCLUDES = -I$(GUROBI_INC)
LIBS = -L$(GUROBI_LIB) -lgurobi_c++ -lgurobi130 -lpthread -lm

SOURCES = 6rkeccak800.cpp 5rkeccak400.cpp 6rkeccak400.cpp \
          6rSHAKE128.cpp 6rSHAKE256.cpp\
          4r512.cpp

TARGETS = $(SOURCES:.cpp=)

all: $(TARGETS)

%: %.cpp
	$(CXX) $< $(CXXFLAGS) $(INCLUDES) $(LIBS) -o $@

clean:
	rm -f $(TARGETS)
