class Board
  attr_accessor :board
  attr_reader :winning_conditions

  def initialize
    @board = [' ', ' ', ' ',
              ' ', ' ', ' ',
              ' ', ' ', ' ']

    @winning_conditions = [
                          [0, 1, 2],
                          [3, 4, 5],
                          [6, 7, 8],
                          [0, 3, 6],
                          [1, 4, 7],
                          [2, 5, 8],
                          [0, 4, 8],
                          [2, 4, 6]
    ]
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

  def check_win(symbol)
    winning_conditions.any? { |condition| condition.all? { |index| board[index] == symbol } } ? true : false
  end

  def check_draw()
    board.all? { |square| square != ' ' } ? true : false
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

endgame = false

until endgame
  print "#{player.symbol} choose 1 - 9: "
  
  board.check_square(player.get_square) ? player.mark_board(board) : next

  board.draw_board
  # Check for win
  if board.check_win(player.symbol)
    puts "#{player.symbol} has won!!!!"
    endgame = true    
  elsif board.check_draw()
    puts "The game ends in a draw!"
    endgame = true
  end
  # Switch player
  player == x ? player = o : player = x
  
end
