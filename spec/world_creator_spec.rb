require 'world_creator'

describe WorldCreator do
  let(:world_creator) { WorldCreator.new }
  let(:world) { double }
  let(:cell_1) { double } 
  let(:cell_2) { double } 
  let(:cell_3) { double } 
  let(:cell_4) { double } 

  describe "creating the next world" do
    it "creates the next world" do
      expect(world).to receive(:row_length).and_return(2)
      expect(world).to receive(:col_length).and_return(2)
    
      expect(world).to receive(:get_neighbors_for_cell).with(0, 0).and_return( [cell_2, cell_3, cell_4] )
      expect(world).to receive(:get_neighbors_for_cell).with(0, 1).and_return( [cell_1, cell_3, cell_4] )
      expect(world).to receive(:get_neighbors_for_cell).with(1, 0).and_return( [cell_1, cell_2, cell_4] )
      expect(world).to receive(:get_neighbors_for_cell).with(1, 1).and_return( [cell_1, cell_2, cell_3] )

      expect(world).to receive(:get_cell).with(0, 0).and_return(cell_1)
      expect(world).to receive(:get_cell).with(0, 1).and_return(cell_2)
      expect(world).to receive(:get_cell).with(1, 0).and_return(cell_3)
      expect(world).to receive(:get_cell).with(1, 1).and_return(cell_4)
                                       
      expect(cell_1).to receive(:is_alive_next_round?).with([cell_2, cell_3, cell_4]).and_return(true)
      expect(cell_2).to receive(:is_alive_next_round?).with([cell_1, cell_3, cell_4]).and_return(false)
      expect(cell_3).to receive(:is_alive_next_round?).with([cell_1, cell_2, cell_4]).and_return(true)
      expect(cell_4).to receive(:is_alive_next_round?).with([cell_1, cell_2, cell_3]).and_return(false)
     
      next_world = world_creator.create_next_world(world)
      expect(next_world.get_cell(0, 0).is_alive?).to eq(true)
      expect(next_world.get_cell(0, 1).is_alive?).to eq(false)
      expect(next_world.get_cell(1, 0).is_alive?).to eq(true)
      expect(next_world.get_cell(1, 1).is_alive?).to eq(false)

    end
  end
end
