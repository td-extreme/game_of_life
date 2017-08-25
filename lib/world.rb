class World

  attr_reader :row_length
  attr_reader :col_length 

  def get_cell(row, col)
    return @default_cell if row >= @row_length || col >= @col_length
    return @default_cell if row < 0 || col < 0
    @cell[row][col]
  end

  def set_cell(row, col, value)
    @cell[row][col] = value
  end

  def initialize(row, col, default_cell)
    @row_length = row
    @col_length = col
    @default_cell = default_cell
    @cell = Array.new(row) { Array.new(col, default_cell) }
  end

  def get_neighbors_for_cell(row, col)
    neighbors = Array.new
    neighbors.push get_cell(row - 1, col - 1)
    neighbors.push get_cell(row - 1, col)
    neighbors.push get_cell(row - 1, col + 1)
    neighbors.push get_cell(row, col - 1)
    neighbors.push get_cell(row, col + 1)
    neighbors.push get_cell(row + 1, col - 1)
    neighbors.push get_cell(row + 1, col)
    neighbors.push get_cell(row + 1, col + 1)
    neighbors
  end
end
