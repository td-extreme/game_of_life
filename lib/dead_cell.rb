class DeadCell

  def is_alive?
    false
  end

  def is_alive_next_round?(neighbors)
    return true if neighbors == 3
    false
  end
end
