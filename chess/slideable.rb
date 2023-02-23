module Slideable


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


    def horizontal_and_vertical_dirs
        HORIZONTAL_AND_VERTICAL_DIRS
    end

    def diagonal_dirs
        DIAGONAL_DIRS
    end

    def moves

        moves = []
        self.move_dirs.each do |direction|
            dx, dy = direction
            moves.concat(grow_unblocked_moves_in_dir(dx, dy))
        end

        moves
        #create array to collect moves

        #iterate over each of the directions in which a slideable piece can move
            #use the peice subclass 'move_dirs' method to get this info
            #for each direction, collect all possible moves in that direciton
                #and add them to your moves array
                #use the 'grow_unblocked_moves_in_dir', helper method
                #iterate throuh move_dirs and call 'grow_unblocked_moves_in_dir' each time
        #return the final array of moves (containing all possible moves in all directions)
    end

    def move_dirs
        #this is for use in the subclass
        raise NotImplementedError
        
    end

    def grow_unblocked_moves_in_dir(dx, dy)

        moves = []

        row, col = self.pos
        
        while row >= 0 && row < 8 && col >= 0 && col < 8
            
            row += dx
            col += dy

            if self.board.rows[row][col].instance_of?(NullPiece)
                moves << [row, col]
            elsif self.board.rows[row][col].color != self.color
                moves << [row, col]
                break
            elsif self.board.rows[row][col].color == self.color
                break
            end
        end
        moves
        # create an array to collect moves

        # get the pieces current row and current column

        # in a loop:
        #     continually increment the pieces current row and current column to generate a new position
        #     stop looping if the new position is invalid (not on the board); the piece can't move i this direction
        #     if the new position is empty, the piece can move here, so add the new position to the moves array
        #     if the new position is occupied with a piece of the opposite color, the piece can move here (to capture it)
        #         but the piece cannot continue to move past this piece so stop looping
        #     if the new position is occupied with a piece of the same color, stop looping
            

    end


end