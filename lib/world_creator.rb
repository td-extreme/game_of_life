require 'world'
require 'living_cell'
require 'dead_cell'

class WorldCreator

  def create_next_world(world)
    row = world.row_length
    col = world.col_length
  
    next_world = World.new(row, col, DeadCell.new)

    (0...row).each do |i|
      (0...col).each do |j|
        neighbors = world.get_neighbors_for_cell(i, j)
        next_world.set_cell(i, j,  world.get_cell(i, j).is_alive_next_round?(neighbors) ? LivingCell.new : DeadCell.new)
      end
    end
    next_world
  end
end
