
RSpec.describe Cell do
    describe 'initialize' do
        it "Create the object cell" do
            expect().to eq()
        end
    end
end

require '../classes/grid'

RSpec.describe initialize do
  context 'initialize' do
    it 'initialize the rows, colums and grids' do
      grid_example = Grid.new(3, 3)
      expect(grid_example.grid2.length * grid_example.grid2[0].length).to eq 9
    end
  end
end

RSpec.describe Grid do
  context 'Init the class' do
    it 'Check if the grid is filled with nils instead of 0 and 1' do
      random = Grid.new(3, 3)
      expect(random.grid.all?(NilClass)).to equal(false)
    end
  end
end
