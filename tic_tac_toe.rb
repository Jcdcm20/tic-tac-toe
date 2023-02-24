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
end

board = Board.new
board.draw_board