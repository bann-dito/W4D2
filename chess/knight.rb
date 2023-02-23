require_relative 'stepable'
require_relative 'piece'

class Knight < Piece
    include Slideable

    def initialize(color, board, pos)
        super
    end

    
    def move_diffs
        l_dirs
    end

    def symbol

        if @color == "white"
            @symbol = ♘
        else
            @symbol = ♞
        end
        
    end

    
private :move_diffs
    

end