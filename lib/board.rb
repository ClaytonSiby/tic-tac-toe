class Board
    attr_reader :player1 , :player2, :current_player
    @@positions = [ 1 , 2 , 3 , 4 , 5 , 6 , 7 , 8 , 9]
   
    def initialize(player1, player2)
        @player1 = player1
        @player2 = player2
        @current_player = player1
    end

    def draw_board
        "
            #{@@positions[0]} | #{@@positions[1]} | #{@@positions[2]}
            =========
            #{@@positions[3]} | #{@@positions[4]} | #{@@positions[5]}
            =========
            #{@@positions[6]} | #{@@positions[7]} | #{@@positions[8]}
        "
    end

    def valid_move?(move)
      @@positions.any?(move)
    end

    def position_empty?(move)
         @@positions[move - 1].is_a?(String) ? false : true
    end

    def asign_mark(move, mark)
        "position taken or invalid move" if valid_move?(move) || position_empty?(move)

        @@positions[move - 1] = mark
    end

    def board_full?
        @@positions.none?(String)
    end

end

board = Board.new("Clayton", "Visvaldas")
puts board.position_empty?(1)
