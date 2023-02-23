require_relative 'board.rb'

    attr_reader :pos

class Piece
    def initialize(color, board, pos)

        @color = color
        @board = board
        @pos = pos
        @symbol = ""
        
    end

    def to_s

    end

    def empty?

    end

    def valid_moves

    end

    def pos=(val)

    end

    def Symbol

    end

    def move_into_check

    end

end