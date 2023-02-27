class Board
  attr_accessor :board

  def initialize
    @board = [' ', ' ', ' ',
              ' ', ' ', ' ',
              ' ', ' ', ' ']
    end

    def draw_board
      system 'clear'
      puts 'TIC TAC TOE'
      puts " #{board[0]} | #{board[1]} | #{board[2] }"
      puts '-----------'
      puts " #{board[3]} | #{board[4]} | #{board[5]} "
      puts '-----------'
      puts " #{board[6]} | #{board[7]} | #{board[8]} "
    end

    def check_square(square)
      board[square] == ' ' ? true : false
    end
end

class Player
  attr_reader :symbol, :square
  attr_accessor :winner

  def initialize(symbol)
    @symbol = symbol
    @winner = false
  end

  def get_square
    @square = gets.to_i - 1
  end

  def mark_board(board)
    board.board[square] = symbol
  end
end

board = Board.new
board.draw_board

x = Player.new('X')
o = Player.new('O')



player = x


i = 0
while i < 9
  print "#{player.symbol} choose 1 - 9: "
  
  board.check_square(player.get_square) ? player.mark_board(board) : next

  board.draw_board

  # Switch player
  player == x ? player = o : player = x
  i += 1
end
