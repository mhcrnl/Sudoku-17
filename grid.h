
class Grid{
protected:
  int **m_grid;
	int m_rows;
	int m_cols;
public:
	Grid(unsigned rows, unsigned cols);
	Grid::~Grid();
	unsigned rowSize() {return m_rows;};
	unsigned colSize() {return m_cols;};
	virtual void fillCell(unsigned value, unsigned row, unsigned col);
	virtual unsigned getValueAt(unsigned row, unsigned col);
	virtual void display();
	virtual bool isValid(){return true;};
};