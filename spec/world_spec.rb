require 'world'

describe World do
  let(:world_10x20) { World.new(10, 20, "default") }

  it "has a row length" do
    expect(world_10x20.row_length).to eq(10)
  end

  it "has a col length" do
    expect(world_10x20.col_length).to eq(20)
  end

  describe "getting cells out of bounds of the world" do
    it "returns defauls when row is greater than row_length" do
      expect(world_10x20.get_cell(1000, 0)).to eq("default")
    end
    it "returns defauls when col is greater than col length" do
      expect(world_10x20.get_cell(0, 1000)).to eq("default")
    end
    it "returns defauls when row is less than row_length" do
      expect(world_10x20.get_cell(-1000, 0)).to eq("default")
    end
    it "returns defauls when col is less than col length" do
      expect(world_10x20.get_cell(0, -1000)).to eq("default")
    end

  end

  describe "getting neighbors for cell that is not on an edge" do
    describe "neighbors for a cell fist row" do
      it "gets the neighbor to a cell's upper left" do
        world_10x20.set_cell(0, 0, "upper left")
        neighbors = world_10x20.get_neighbors_for_cell(1, 1)
        expect(neighbors).to include("upper left")
      end

      it "gets the neighbor to a cell's upper center" do
        world_10x20.set_cell(0, 1, "upper center")
        neighbors = world_10x20.get_neighbors_for_cell(1, 1)
        expect(neighbors).to include("upper center")
      end

      it "gets the neighbor to a cell's upper right" do
        world_10x20.set_cell(0, 2, "upper right")
        neighbors = world_10x20.get_neighbors_for_cell(1, 1)
        expect(neighbors).to include("upper right")
      end
    end

    describe "neighbors for a cell second row" do
      it "gets the neighbor to a cell's center left" do
        world_10x20.set_cell(1, 0, "center left")
        neighbors = world_10x20.get_neighbors_for_cell(1, 1)
        expect(neighbors).to include("center left")
      end

      it "gets the neighbor to a cell's center right" do
        world_10x20.set_cell(1, 2, "center right")
        neighbors = world_10x20.get_neighbors_for_cell(1, 1)
        expect(neighbors).to include("center right")
      end
    end

    describe "neighbors for a cell third row" do
      it "gets the neighbor to a cell's lower left" do
        world_10x20.set_cell(2, 0, "lower left")
        neighbors = world_10x20.get_neighbors_for_cell(1, 1)
        expect(neighbors).to include("lower left")
      end

      it "gets the neighbor to a cell's lower center" do
        world_10x20.set_cell(2, 1, "lower center")
        neighbors = world_10x20.get_neighbors_for_cell(1, 1)
        expect(neighbors).to include("lower center")
      end

      it "gets the neighbor to a cell's lower right" do
        world_10x20.set_cell(2, 2, "lower right")
        neighbors = world_10x20.get_neighbors_for_cell(1, 1)
        expect(neighbors).to include("lower right")
      end
    end
  end
end
