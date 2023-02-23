require_relative "piece.rb"
require_relative "slideable"

class Bishop < Piece


    def initialize(color, board, pos)
        super
    end

    def move_dirs
        diagonal_dirs
    end

    def symbol

        if @color == "white"
            @symbol = ♗
        else
            @symbol = ♝
        end
        
    end

end