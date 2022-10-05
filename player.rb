class Player 
    attr_accessor :name
    attr_accessor :symbol
    attr_accessor :number

    def initialize(name, symbol, number) 
        @name = name
        @symbol = symbol
        @number = number
    end
end