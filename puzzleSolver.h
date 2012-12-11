#ifndef PUZZLESOLVER_H
#define PUZZLESOLVER_H

#include "grid.h"


class PuzzleSolver {
public:
    typedef enum {
        Sudoku = 0
    } PuzzleType;

    static PuzzleSolver& getPuzzleSolver(PuzzleType type);
    virtual bool solve(Grid &grid) = 0;
};

class SudokuSolver: public PuzzleSolver {
    bool solveSection(Grid &grid, unsigned sectionNumber, unsigned initValue);
public:
    bool solve(Grid &grid);
};


class DefaultPuzzleSolver : public PuzzleSolver {
    bool solveSection(Grid&, unsigned, unsigned) { return false; }
public:
    bool solve(Grid&) { return false; }
};

#endif // PUZZLESOLVER_H

