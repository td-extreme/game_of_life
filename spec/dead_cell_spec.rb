require 'dead_cell'
require 'living_cell'

describe DeadCell do
  let(:dead_cell) { DeadCell.new() }
  let(:neighbors) { Array.new(1, DeadCell.new) }

  it "is dead" do
    expect(dead_cell.is_alive?).to eq(false)
  end

  describe "next round" do
    
    it "is dead next round if it has 0 neighbors" do
      expect(dead_cell.is_alive_next_round?(neighbors)).to eq(false)
    end

    it "is dead next round if it has 1 neighbors" do
      neighbors.push(LivingCell.new)
      expect(dead_cell.is_alive_next_round?(neighbors)).to eq(false)
    end

    it "is dead next round if it has 2 neighbors" do
      neighbors.push(LivingCell.new)
      neighbors.push(LivingCell.new)
      expect(dead_cell.is_alive_next_round?(neighbors)).to eq(false)
    end

    it "is alive next round if it has 3 neighbors" do
      neighbors.push(LivingCell.new)
      neighbors.push(LivingCell.new)
      neighbors.push(LivingCell.new)
      expect(dead_cell.is_alive_next_round?(neighbors)).to eq(true)
    end

    it "is dead next round if it has 4 neighbors" do
      neighbors.push(LivingCell.new)
      neighbors.push(LivingCell.new)
      neighbors.push(LivingCell.new)
      neighbors.push(LivingCell.new)
      expect(dead_cell.is_alive_next_round?(neighbors)).to eq(false)
    end

  end
end
