#include "puzzleSolver.h"
#include "sudokuGrid.h"

int main()
{
    SudokuGrid sudoku;
    PuzzleSolver* solver = PuzzleSolver::getPuzzleSolver("Sudoku");

    if (solver)
        solver->solve(sudoku);

    return 0;
}
