require_relative 'slideable'
require_relative 'piece.rb'

class Queen < Piece
    include Slideable

    def initialize(color, board, pos)
        super
    end

    
    def move_dirs
        horizontal_and_vertical_dirs + diagonal_dirs
    end

    def symbol

        if @color == "white"
            @symbol = ♕
        else
            @symbol = ♛
        end
        
    end

    
:move_dirs
    

end