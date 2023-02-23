require_relative "piece.rb"
require_relative "slideable"

class Rook < Piece


    def initialize(color, board, pos)
        super
    end

    def move_dirs
        horizontal_and_vertical_dirs
    end

    def symbol

        if @color == "white"
            @symbol = ♖
        else
            @symbol = ♜
        end
        
    end

end