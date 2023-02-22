module Slideable


    HORIZONTAL_AND_VERTICAL_DIRS = [
        [:dx, :dy],
        [:dx. :dy],
        [:dx, :dy],
        [:dx, :dy]
    ].freeze
    

    DIAGONAL_DIRS = [
        [:dx, :dy],
        [:dx, :dy],
        [:dy, :dy],
        [:dx, :dy]
    ].freeze


    def horizontal_and_vertical_dirs
        #getter
    end

    def diagonal_dirs
        #getter
    end

    def moves
        #create array to collect moves

        #iterate over each of the directions in which a slideable piece can move
            #use the peice subclass 'move_dirs' method to get this info
            #for each direction, collect all possible moves in that direciton
                #and add them to you rmoves array
                #use the 'grow_unblocked_moves_in_dir', helper method
                #iterate throuh move_dirs and call 'grow_unblocked_moves_in_dir' each time
        #return the final array of moves (containing all possible moves in all directions)
    end

    def move_dirs
        #this is for use in the subclass
        raise NotImplementedError
        
    end

    def grow_unblocked_moves_in_dir(dx, dy)
        # create an array to collect moves

        # get the pieces current row and current column

        # in a loop:
        #     continually increment the pieces current row and current column to general a new position
        #     stop looping if the new position is invalid (not on the board); the piece can't move i this direction
        #     if the new position is empty, the piece can move here, so add the new position to the moves array
        #     if the new position is occupied with a piece of the opposite color, the piece can move here (to capture it)
        #         but the piece cannot continue to move past this piece so stop looping
        #     if the new position is occupied with a piece of the same color, stop looping
            

    end


end