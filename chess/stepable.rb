module Stepable


    def moves
        create array of collect moves

        #iterate through each of this pieces possible move_diffs
            #for each move_diffs increaement the prieces poistion to generate a new position
            #add the new position to the moves array if it isL
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