# frozen_string_literal: true

require_relative '../lib/player'

# board class definition
class Board
  @@positions = (1..9).to_a
  def initialize
    @@positions
  end

  def self.draw_board
    "
    #{@@positions[0]} | #{@@positions[1]} | #{@@positions[2]}
    =======
    #{@@positions[3]} | #{@@positions[4]} | #{@@positions[5]}
    =======
    #{@@positions[6]} | #{@@positions[7]} | #{@@positions[8]}
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
    @@positions[move - 1].is_a?(Integer)
  end

  def self.draw
    'Game over & it is a draw!!' if @@positions.none?(Integer)
  end

  def self.make_move(move, mark)
    return 'Invalid move, enter a numbe in range 1..9' unless valid_move?(move)

    return "Position #{move} has been taken, please select another. >> " unless position_empty?(move)

    @@positions[move - 1] = mark
  end

  def self.reset_board
    @@positions.size.times { |el| @@positions[el] = el + 1 }
  end
end