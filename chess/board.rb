require_relative "piece.rb"
require_relative "nullpiece.rb"
class Board

    attr_reader :rows

    def initialize()
        @rows = Array.new(8){Array.new(8, NullPiece.instance)}
        
    end

    def [](position)
        row , col = position
        @rows[row][col]
    end

    def set_pieces

        (0...@rows.length).each do |i|
            @rows[0][i] = Piece.new
            @rows[1][i] = Piece.new
            @rows[6][i] = Piece.new
            @rows[7][i] = Piece.new
        end 
        
    end

    def move_piece(start_pos, end_pos)
        # deconstruct star and end pos
        # check if start contains piece
        # check if end pos is valid
        # @rows[start], @rows[end] = @rows[end], @rows[start]
        row_1, col_1 = start_pos
        row_2, col_2 = end_pos

        if @rows[row_1][col_1].instance_of?(Piece)
        #check if startPOS is a piece

            if @rows[row_2][col_2].instance_of?(NullPiece) && row_2 >= 0 && row_2 < 8 && col_2 >= 0 && col_2 < 8
                @rows[row_2][col_2] = @rows[row_1][col_1]
                @rows[row_1][col_1] = NullPiece.instance
            end
        end
    end



    private
    # attr_reader :null_piece
end


# The `Board` class should have a `#move_piece(start_pos, end_pos)` method. This
# should update the 2D grid and also the moved piece's position. You'll want to
# raise an exception if:

# 1. there is no piece at `start_pos` or
# 2. the piece cannot move to `end_pos`.