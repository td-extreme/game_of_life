require 'living_cell'
require 'dead_cell'

describe LivingCell do
  let(:living_cell) { LivingCell.new() }
  let(:neighbors) { Array.new(1, DeadCell.new) }
  it "it is alive" do
    expect(living_cell.is_alive?).to eq(true)
  end

  describe "state next round" do

    it "is dead next round if it has 0 neighbors" do
      expect(living_cell.is_alive_next_round?(neighbors)).to eq(false)
    end

    it "is dead next round if it has 1 neighbors" do
      neighbors.push(LivingCell.new)
      expect(living_cell.is_alive_next_round?(neighbors)).to eq(false)
    end


    it "is alive next round if it has 2 neighbors" do
      neighbors.push(LivingCell.new)
      neighbors.push(LivingCell.new)
      expect(living_cell.is_alive_next_round?(neighbors)).to eq(true)
    end

    it "is alive next round if it has 3 neighbors" do
      neighbors.push(LivingCell.new)
      neighbors.push(LivingCell.new)
      neighbors.push(LivingCell.new)
      expect(living_cell.is_alive_next_round?(neighbors)).to eq(true)
    end

    it "is alive next round if it has 4 neighbors" do
      neighbors.push(LivingCell.new)
      neighbors.push(LivingCell.new)
      neighbors.push(LivingCell.new)
      neighbors.push(LivingCell.new)
      expect(living_cell.is_alive_next_round?(neighbors)).to eq(false)
    end

    it "is alive next round if it has 5 neighbors" do
      neighbors.push(LivingCell.new)
      neighbors.push(LivingCell.new)
      neighbors.push(LivingCell.new)
      neighbors.push(LivingCell.new)
      neighbors.push(LivingCell.new)
      expect(living_cell.is_alive_next_round?(neighbors)).to eq(false)
    end

  end
end
