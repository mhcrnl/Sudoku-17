#include "grid.h"

class SudokuGrid  : public Grid {
  bool isSectionValid(unsigned);
	bool isRowValid(unsigned);
	bool isColValid(unsigned);
public:
	SudokuGrid();
	bool isValid();
	// some functions to help generate map to come up wid a valid map/grid
};