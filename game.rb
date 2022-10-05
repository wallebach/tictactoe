require './player.rb'
require './board.rb'
class Game
    attr_accessor :player1
    attr_accessor :player2
    attr_accessor :current_player
    attr_accessor :board
    attr_accessor :game_over

    def initialize
        @board = Board.new
        @game_over = false
    end

    def init_player(symbol, number)
        p "Name of player #{number}"
        name = gets.chomp!
        
        player = Player.new(name, symbol, number)
        return player
    end

    def prepare_players
        @player1 = init_player('x', 1)
        @player2 = init_player('o', 2)
        @current_player = @player1
    end

    def player_win(player) 
        return "Player #{player.name} wins!"
    end
    
    def play
        prepare_players
        board.show
        until @game_over
            puts "#{@current_player.name} moves:"
            move = gets.chomp!.to_i
            if board.cell_empty?(move) 
                board.add_move(move, @current_player.symbol)
                board.show
                if board.win?(@current_player)
                    @game_over = true
                    puts player_win(@current_player)
                end
            else
                puts board.cell_not_free(move)
            end
        end
    end
end

game = Game.new
game.play