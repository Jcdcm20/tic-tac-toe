class Board
  def initialize
    @board = [' ', ' ', ' ',
              ' ', ' ', ' ',
              ' ', ' ', ' ']
  end

  def draw_board
    system 'clear'
    puts 'TIC TAC TOE'
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]}"
    puts '-----------'
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]}"
    puts '-----------'
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]}"
  end

  def update_board(square, player)
    @board[square - 1] = player.symbol
  end
end

class Player
  attr_reader :symbol

  def initialize(symbol)
    @symbol = symbol
  end

  def square
    gets.to_i
  end
end

board = Board.new
x = Player.new('X')
o = Player.new('O')

players = [x, o]
winner = false

player = players.sample

unless winner
  board.draw_board

  puts 'Choose 1 - 9: '
  square = player.square

  board.update_board(square, player)
  board.draw_board

  if player == players[0]
    player = players[1]
  else
    player = players[0]
  end
end
