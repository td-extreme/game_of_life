class World

  attr_reader :row_length
  attr_reader :col_length 
  attr_accessor :cell

  def initialize(row, col, default_cell)
    @row_length = row
    @col_length = col
    @cell = Array.new(row) { Array.new(col, default_cell) }
  end

  def get_neighbors_for_cell(row, col)
    neighbors = Array.new
    neighbors.push @cell[row - 1][col - 1]
    neighbors.push @cell[row - 1][col]
    neighbors.push @cell[row - 1][col + 1]
    neighbors.push @cell[row][col - 1]
    neighbors.push @cell[row][col + 1]
    neighbors.push @cell[row + 1][col - 1]
    neighbors.push @cell[row + 1][col]
    neighbors.push @cell[row + 1][col + 1]
    neighbors
  end
end
