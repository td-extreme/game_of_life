require 'dead_cell'

describe DeadCell do
  let(:dead_cell) { DeadCell.new() }

  it "is dead" do
    expect(dead_cell.is_alive?).to eq(false)
  end

  describe "next round" do
    
    it "is dead next round if it has 0 neighbors" do
      expect(dead_cell.is_alive_next_round?(0)).to eq(false)
    end

    it "is dead next round if it has 1 neighbors" do
      expect(dead_cell.is_alive_next_round?(1)).to eq(false)
    end

    it "is dead next round if it has 2 neighbors" do
      expect(dead_cell.is_alive_next_round?(2)).to eq(false)
    end

    it "is alive next round if it has 3 neighbors" do
      expect(dead_cell.is_alive_next_round?(3)).to eq(true)
    end

    it "is dead next round if it has 4 neighbors" do
      expect(dead_cell.is_alive_next_round?(4)).to eq(false)
    end

  end
end
