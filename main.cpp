#include "puzzleSolver.h"

int main()
{
    SudokuGrid sudoku;
    //PuzzleSolver solver(PUZZLE_TYPE::sudoku);
    PuzzleSolver& solver = PuzzleSolver::getPuzzleSolver(PUZZLE_TYPE::sudoku);
    solver.solve(sudoku);
    return 0;
}
