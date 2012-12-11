CPP=g++
CPP_FLAGS=-c -Wall

all: sudoku

sudoku: main.o grid.o puzzleSolver.o sudokuGrid.o SudokuSolver.o
	$(CPP) main.o grid.o puzzleSolver.o sudokuGrid.o SudokuSolver.o -o sudoku

main.o: main.cpp
	$(CPP) $(CPP_FLAGS) main.cpp

grid.o: grid.cpp
	$(CPP) $(CPP_FLAGS) grid.cpp

puzzleSolver.o: puzzleSolver.cpp
	$(CPP) $(CPP_FLAGS) puzzleSolver.cpp

sudokuGrid.o: sudokuGrid.cpp
	$(CPP) $(CPP_FLAGS) sudokuGrid.cpp

SudokuSolver.o: SudokuSolver.cpp
	$(CPP) $(CPP_FLAGS) SudokuSolver.cpp

clean: 
	rm -rf *.o sudoku

