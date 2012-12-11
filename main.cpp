#include "puzzleSolver.h"
#include "sudokuGrid.h"

int main()
{
    SudokuGrid sudoku;
    PuzzleSolver& solver = PuzzleSolver::getPuzzleSolver(PuzzleSolver::Sudoku);
    solver.solve(sudoku);
    return 0;
}
