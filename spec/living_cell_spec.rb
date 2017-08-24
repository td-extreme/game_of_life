require 'living_cell'

describe LivingCell do
  let(:living_cell) { LivingCell.new() }

  it "it is alive" do
    expect(living_cell.is_alive?).to eq(true)
  end

  describe "state next round" do

    it "is dead next round if it has 0 neighbors" do
      expect(living_cell.is_alive_next_round?(0)).to eq(false)
    end

    it "is dead next round if it has 1 neighbors" do
      expect(living_cell.is_alive_next_round?(1)).to eq(false)
    end

    it "is alive next round if it has 2 neighbors" do
      expect(living_cell.is_alive_next_round?(2)).to eq(true)
    end

    it "is alive next round if it has 3 neighbors" do
      expect(living_cell.is_alive_next_round?(3)).to eq(true)
    end

    it "is dead next round if it has 4 neighbors" do
      expect(living_cell.is_alive_next_round?(4)).to eq(false)
    end

    it "is dead next round if it has 5 neighbors" do
      expect(living_cell.is_alive_next_round?(5)).to eq(false)
    end
  end
end
