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

  def check_winner(player)
    if player.winner == true
      puts "#{player.symbol} is the winner!"
      return true
    end
  end

  def check_square(square)
    if @board[square - 1] == ' '
      return true
    end
      return false
  end
end

class Player
  attr_reader :symbol
  attr_accessor :winner

  def initialize(symbol)
    @symbol = symbol
    @winner = false
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

while !board.check_winner(player) do
  board.draw_board

  puts "#{player.symbol} - Choose 1 - 9: "
  square = player.square
  
  if board.check_square(square)
    board.update_board(square, player)
  else
    next
  end

  board.draw_board

  if player == players[0]
    player = players[1]
  else
    player = players[0]
  end
end
