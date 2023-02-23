require_relative 'stepable'
require_relative 'piece'

class King < Piece
    include Slideable

    def initialize(color, board, pos)
        super
    end

    
    def move_diffs
        horizontal_and_vertical_dirs + diagonal_dirs
    end

    def symbol

        if @color == "white"
            @symbol = ♔
        else
            @symbol = ♚
        end
        
    end

    
private :move_diffs
    

end