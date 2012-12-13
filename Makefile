CPP=g++
CPP_FLAGS=-c -Wall

all: sudoku

sudoku: main.o Grid.o PuzzleSolver.o SudokuGrid.o SudokuSolver.o
	$(CPP) main.o Grid.o PuzzleSolver.o SudokuGrid.o SudokuSolver.o -o sudoku

main.o: src/main.cpp
	$(CPP) $(CPP_FLAGS) src/main.cpp

Grid.o: src/Grid.cpp
	$(CPP) $(CPP_FLAGS) src/Grid.cpp

PuzzleSolver.o: src/PuzzleSolver.cpp
	$(CPP) $(CPP_FLAGS) src/PuzzleSolver.cpp

SudokuGrid.o: src/SudokuGrid.cpp
	$(CPP) $(CPP_FLAGS) src/SudokuGrid.cpp

SudokuSolver.o: src/SudokuSolver.cpp
	$(CPP) $(CPP_FLAGS) src/SudokuSolver.cpp

clean: 
	rm -rf *.o sudoku

