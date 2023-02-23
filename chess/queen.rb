require_relative 'slideable'
require_relative 'piece'

class Queen < Piece
    include Slideable

    def initialize(color, board, pos)
        super
    end

    
    def move_dirs
        horizontal_and_vertical_dirs + diagonal_dirs
    end

    
private :move_dirs
    

end