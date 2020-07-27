# frozen_string_literal: true

# Player class definition
class Player
  attr_reader :name, :mark, :choices
  def initialize(name, mark)
    @name = name
    @mark = mark
    @choices = []
  end

  def my_move(move)
    return 'Invalid move, enter a number in range 1..9' unless Board.valid_move?(move)

    store_move = Board.make_move(move, @mark)
    return store_move unless store_move == @mark

    @choices << move
    move
  end

  def reset_choices
    @choices = []
  end
end