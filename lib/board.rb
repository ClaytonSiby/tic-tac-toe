class Board
    @@positions = (1..9).to_a

    def initialize
        @@positions
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

    def self.error_message
        'invalid move please enter a number between 1 and 9'
    end

    def self.valid_move?(move)
      @@positions.any?(move)
    end

    def self.position_empty?(move)
         @@positions[move - 1].is_a?(String) ? "Position #{move} has been taken please make another choice" : true
    end

    def self.asign_mark(move, mark)
       return error_message unless valid_move?(move) && position_empty?(move)

        @@positions[move - 1] = mark
    end

    def self.board_full?
        @@positions.none?(Integer)
    end

end