class LivingCell

  def is_alive?
    true
  end

  def is_alive_next_round?(neighbors) 
    count = alive_neighbors_count(neighbors)
    return true if count == 2 || count == 3
    false
  end

  def to_string
    "X"
  end

  private
  def alive_neighbors_count(neighbors)
    neighbors.select { |neighbor| neighbor.is_alive? }.count
  end
end
