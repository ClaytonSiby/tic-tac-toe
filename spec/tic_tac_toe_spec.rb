require 'board'
require 'player'

describe Player do
  subject(:instance) { Player.new("somename", "X") }
  # # let(:name) { "Name"}
  # subject(:mark) {Player.new("X")}
  # # let(:choises) {(1..9)}

  describe "#initialize" do
    it 'It should expect name instance values class as string' do
      expect(instance.name.class).to eq(String)
    end

    it 'It should expect mark instance values class as string' do
      expect(instance.mark.class).to eq(String)
    end

  end
end


# it "Should return the last name input which is belong to player2" do
#   expect(object.welcome.class).to eq(String)
# end