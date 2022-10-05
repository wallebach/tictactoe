require './player.rb'
class Board
    attr_accessor :win_combinations
    attr_accessor :board_map
    
    def initialize
        @win_combinations = [[1,2,3], [4,5,6], [7,8,9], [1,5,9], [3,5,7], [1,4,7], [2,5,8], [3,6,9]]
        @board_map = init_board_map   
    end

    def show
        puts "\n #{board_map[0]} | #{board_map[1]} | #{board_map[2]}"   
        puts "---+---+---" 
        puts " #{board_map[3]} | #{board_map[4]} | #{board_map[5]}"
        puts "---+---+---" 
        puts " #{board_map[6]} | #{board_map[7]} | #{board_map[8]}\n\n"
    end

    def win?(player)
        symbol = player.symbol
        result = false
        @win_combinations.each do | combination |
            if @board_map[combination[0]-1] == symbol && @board_map[combination[1]-1] == symbol && @board_map[combination[2]-1] == symbol
                result = true
            end
        end
        result
    end

    def cell_empty?(number) 
        return @board_map[number-1] == number
    end

    def full? 
        if @board_map.any?(Integer)
            return false
        else 
            return true
        end
    end

    def add_move(number, player_symbol) 
        @board_map[number-1] = player_symbol
    end

    def init_board_map 
        return [1,2,3,4,5,6,7,8,9] 
    end

    def cell_not_free(cell)
        return "Not possible to use cell #{cell}, there is a value already."
    end
end