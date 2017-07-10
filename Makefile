CC=g++
CFLAGS=-c -Wall -I /usr/local/include/boost-1_37/ -g
LDFLAGS=-L /usr/local/lib 
SOURCES=adaboost.cpp test.cpp
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=ada_boosting

all: $(SOURCES) $(EXECUTABLE)
	

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

.cpp.o:
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -fr *.o *~ $(EXECUTABLE)