class WorldDrawler 

  def print_world(world)
    (0...world.row_length).each do |i| 
      (0...world.col_length).each do |j| 
        print(world.get_cell(i, j).to_string)
      end
      puts ""
    end
  end
end
