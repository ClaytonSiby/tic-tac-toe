# Player class definition
class Player
  attr_reader :name, :mark, :choices
  def initialize(name, mark)
    @name = name
    @mark = mark
    @choices = []
  end

  def my_move(move)
    store_move = Board.make_move(move, @mark)
    return store_move unless store_move == @mark

    @choices << move
    move
  end
end
