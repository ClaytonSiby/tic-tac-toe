require 'board'
require 'player'

describe Player do
  subject(:instance) { Player.new("somename", "X") }

  describe "#initialize" do
    it 'It should expect name instance values class as string' do
      expect(instance.name.class).to eq(String)
    end

    it 'It should expect mark instance values class as string' do
      expect(instance.mark.class).to eq(String)
    end

  end
  
end

describe Array do
  let(:object) {Array.new}
  let(:test_arr) {Array.new}
  describe "#contain_all?" do
    it 'It compares object & argument arrays & return false if they are not same' do
      object = [1,4,3]
      test_arr = [1,2,3]
      expect(object.contain_all?(test_arr)).to eq(false) 
    end
  end

end
