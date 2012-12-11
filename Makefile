CPP=g++
CPP_FLAGS=-c -Wall

all: sudoku

sudoku: main.o Grid.o PuzzleSolver.o SudokuGrid.o SudokuSolver.o
	$(CPP) main.o Grid.o PuzzleSolver.o SudokuGrid.o SudokuSolver.o -o sudoku

main.o: main.cpp
	$(CPP) $(CPP_FLAGS) main.cpp

Grid.o: Grid.cpp
	$(CPP) $(CPP_FLAGS) Grid.cpp

PuzzleSolver.o: PuzzleSolver.cpp
	$(CPP) $(CPP_FLAGS) PuzzleSolver.cpp

SudokuGrid.o: SudokuGrid.cpp
	$(CPP) $(CPP_FLAGS) SudokuGrid.cpp

SudokuSolver.o: SudokuSolver.cpp
	$(CPP) $(CPP_FLAGS) SudokuSolver.cpp

clean: 
	rm -rf *.o sudoku

