class Player

  @@num_of_players = 1

  attr_reader :id, :symbol

  def initialize(symbol)
    @symbol = symbol
    @id = @@num_of_players

    @@num_of_players += 1
  end

end

class Board
  
  def initialize
    @board = [[' ', ' ', ' '],
              [' ', ' ', ' '],
              [' ', ' ', ' ']]
  end

  def draw_board
    @board.each do |row|
      i = 0
      while i < 3
        if i < 2
          print " #{row[i]} |"
        else
          puts " #{row[i]}"
        end
        i += 1
      end
      puts '-----------'
    end
  end
end

board = Board.new

board.draw_board