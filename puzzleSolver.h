#include "grid.h"

enum PUZZLE_TYPE {
  sudoku = 0
};

class PuzzleSolver {
public:
	static PuzzleSolver& getPuzzleSolver(PUZZLE_TYPE type);
	virtual bool solve(Grid &grid) = 0;
	
};

class SudokuSolver: public PuzzleSolver {
	bool solveSection(Grid &grid, unsigned sectionNumber, unsigned initValue);
public:
	bool solve(Grid &grid);
};