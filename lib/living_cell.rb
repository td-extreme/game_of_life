class LivingCell

  def is_alive?
    true
  end

  def is_alive_next_round?(neighbors) 
    return true if neighbors == 2 || neighbors == 3
    false
  end

end
