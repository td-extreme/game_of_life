class DeadCell

  def is_alive?
    false
  end

  def is_alive_next_round?(neighbors)
    return true if alive_neighbors_count(neighbors) == 3
    false
  end

  def to_string
    "_"
  end

  private
  def alive_neighbors_count(neighbors)
    neighbors.select { |neighbor| neighbor != nil && neighbor.is_alive? }.count
  end
end
