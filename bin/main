#!/usr/bin/env ruby
require_relative '../lib/board'
require_relative '../lib/player'


POSSIBLE_WINS = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [7, 4, 1], [8, 5, 2], [9, 6, 3], [3, 2, 1], [6, 5, 4], [9, 8, 7], [1, 4, 7], [2, 5, 8], [3, 6, 9], [7, 5, 3], [3, 5, 7], [9, 5, 1], [1, 5, 9]]


puts "Player one enter your name"
player_one = gets.chomp

puts "Player two enter your name"
player_two = gets.chomp

first_player = Player.new(player_one, "X")
second_player = Player.new(player_two, "0")
board = Board.new

until board.board_full?

  puts "#{player_one} pick a number between 1 - 9"
  choise_one = gets.chomp
  board.asign_mark(choise_one, first_player.mark)


  print board.draw_board
end
