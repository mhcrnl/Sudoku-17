CPP=g++
CPP_FLAGS=-c -Wall

all: sudoku

sudoku: main.o grid.o puzzleSolver.o sudokuGrid.o
	$(CPP) main.o grid.o puzzleSolver.o sudokuGrid.o -o sudoku

main.o: main.cpp
	$(CPP) $(CPP_FLAGS) main.cpp

grid.o: grid.cpp
	$(CPP) $(CPP_FLAGS) grid.cpp

puzzleSolver.o: puzzleSolver.cpp
	$(CPP) $(CPP_FLAGS) puzzleSolver.cpp

sudokuGrid.o: sudokuGrid.cpp
	$(CPP) $(CPP_FLAGS) sudokuGrid.cpp

clean: 
	rm -rf *.o sudoku

