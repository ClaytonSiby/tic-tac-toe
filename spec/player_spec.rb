require_relative '../lib/player.rb' 

describe Player do
  subject(:instance) { Player.new('somename', 'X') }

  describe '#initialize' do
    it 'It should expect name instance values class as string' do
      expect(instance.name.class).to eq(String)
    end

    it 'It should expect mark instance values class as string' do
      expect(instance.mark.class).to eq(String)
    end
  end

  describe 'self.my_move' do
    let(:object) { Player.new('Visvaldas', 'O') }
    let(:move_valid) { 5 }
    context 'it should fail from test if same move is taken or self.draw_board is not updated' do
      it 'should return argument itself' do
        expect(object.my_move(move_valid)).to eq(move_valid)
      end
    end
  end
end