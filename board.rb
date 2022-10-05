class Board
    attr_accessor win_combinations
    attr_accessor board_status
    
    def initialize
        win_combinations = [[1,2,3], [4,5,6], [7,8,9], [1,5,9], [3,5,7], [1,4,7], [2,5,8], [3,6,9]]
        board_status = [1,2,3,4,5,6,7,8,9]    
    end
end