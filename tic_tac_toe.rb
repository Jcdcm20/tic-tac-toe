class Board
  
  def initialize
    @board = [[' ', ' ', ' '],
              [' ', ' ', ' '],
              [' ', ' ', ' ']]
  end

  def draw_board
    system 'clear'
    @board.each do |row|
      puts " #{row[0]} | #{row[1]} | #{row[2]} "
      puts "-----------"
    end
  end

  def update_board(square, symbol)
    @board[square - 1] = symbol
  end
end

board = Board.new

