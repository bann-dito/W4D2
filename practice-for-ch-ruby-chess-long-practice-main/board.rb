class Board
    def initialize(null_piece)
        @rows = Array.new(8){Array.new(8, nil)}
        @null_piece = null_piece
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

        if @rows[row_1][col_1] == nil && row_2 >= 0 && row_2 < 8 && col_2 >= 0 && col_2 < 8
            @rows[start_pos], @rows[end_pos] = @rows[end_pos], @rows[start_pos]
        end
    end



    private
    attr_reader :null_piece
end


# The `Board` class should have a `#move_piece(start_pos, end_pos)` method. This
# should update the 2D grid and also the moved piece's position. You'll want to
# raise an exception if:

# 1. there is no piece at `start_pos` or
# 2. the piece cannot move to `end_pos`.