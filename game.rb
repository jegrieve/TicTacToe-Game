#You can enter the size of the board (EX: 3x3 or 10x10 grid)
#You can have 2 or more players (human controlled or computer controlled)
class Board
    attr_reader :size

    def initalize
        puts "Enter game size:"
        @size = gets.chomp.to_i
        #Enter human player names EX: James Chris Steven --> 3
        #Enter computer player names EX: Matt Jessica Athur --> 3
        #...each do |el| Player.new(el)   shove that into players array
        puts "Enter amount of human players followed by computer players Ex: 1 1 (one human one computer)"
        @amt = gets.chomp.split(" ").map(&:to_i)
        @human_players = @amt.first
        @computer_players = @amt.last
        @players = []
        @board = Array.new(size) {Array.new(size, "_")}
    end

    def initialize_players

    end

    def run
        puts "Welcome to TicTacToe"
        until win? || lose?
            self.display
        end
        puts "GAME OVER!"
    end

    def display
        @board.each do |row|
            puts row
        end
    end

    def switch_players

    end

    def win?
        return true if diagonal_win? || vertical_win? || horizontal_win?
        false
    end

    def lose?
        @board.each do |array|
            return true if array.none? {|el| el == "_"}
        end
        false
    end

    def diagonal_win?

    end

    def vertical_win?

    end

    def horizontal_win?

    end

    def legal_position?
        #not out of bounds/not already selected
    end

end