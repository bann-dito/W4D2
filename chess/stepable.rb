module Stepable

    HORIZONTAL_AND_VERTICAL_DIRS = [
        [-1, 0],
        [0, 1],
        [1, 0],
        [0, -1]
    ].freeze

    DIAGONAL_DIRS = [
        [-1, -1],
        [-1, 1],
        [1, 1],
        [1, -1]
    ].freeze

    L_DIRS = [

        [2, 1], 
        [-2, 1], 
        [2, -1], 
        [-2, -1], 
        [1, 2], 
        [-1, 2], 
        [1, -2], 
        [-1, -2]

    ]

    def horizontal_and_vertical_dirs
        HORIZONTAL_AND_VERTICAL_DIRS
    end

    def diagonal_dirs
        DIAGONAL_DIRS
    end

    def l_dirs
        L_DIRS
    end


    def moves
        moves = []
        # create array of collect moves
        row, col = self.pos
        self.move_diffs.each do |direction|
            dx, dy = direction
            row += dx
            col += dy
            if row >= 0 && row < 8 && col >= 0 && col < 8
                if self.board.rows[row][col].instance_of?(NullPiece)
                    moves << [row, col]
                elsif self.board.rows[row][col].color != self.color
                    moves << [row, col] 
                end
            end
        end

        moves

        #iterate through each of this pieces possible move_diffs
            #for each move_diffs increaement the pieces poistion to generate a new position
            #add the new position to the moves array if it is
                #on the new board and empty
                #or on the board and contains a peice of the opposite color
        
        #return the final array of moves
    end



    private

    def move_diffs
        #subclass to implement this
        raise NotImplementedError
    end
end