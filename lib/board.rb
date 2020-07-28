# board class definition
class Board
  @positions = (1..9).to_a
  def initialize
    @positions
  end

  def self.draw_board
    "
    #{@positions[0]} | #{@positions[1]} | #{@positions[2]}
    =========
    #{@positions[3]} | #{@positions[4]} | #{@positions[5]}
    =========
    #{@positions[6]} | #{@positions[7]} | #{@positions[8]}
    "
  end

  def self.update_board
    system('clear')
    Board.draw_board
  end

  def self.valid_move?(move)
    move >= 1 && move <= 9 ? true : false
  end

  def self.position_empty?(move)
    @positions[move - 1].is_a?(Integer)
  end

  def self.game_draw
    'Game over & it is a draw!!'
  end

  def self.make_move(move, mark)
    if valid_move?(move) != true
      'Invalid move, enter a numbe in range 1..9'
    elsif position_empty?(move) != true
      "Position #{move} has been taken, please select another. >> "
    else
      @positions[move - 1] = mark
    end
  end
end

# determine if an array includes given elements.
class Array
  def contain_all?(arr)
    arr.all? { |elem| include?(elem) }
  end
end

# PlayGame module holding the game possible wins.
module PlayGame
  POSSIBLE_WINS = [
    [1, 2, 3], [4, 5, 6],
    [7, 8, 9], [1, 5, 9],
    [2, 5, 8], [3, 5, 7],
    [1, 4, 7], [3, 6, 9]
  ].freeze

  def self.won?(player)
    POSSIBLE_WINS.any? { |elem| player.choices.contain_all?(elem) }
  end
end