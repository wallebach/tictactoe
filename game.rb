require './player.rb'
require './board.rb'
class Game
    attr_accessor :player1
    attr_accessor :player2
    attr_accessor :current_player
    attr_accessor :board

    def initialize
        @board = Board.new
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
    
    def play
        prepare_players
        board.show
    end
end

game = Game.new
game.play