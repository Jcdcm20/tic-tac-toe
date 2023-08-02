class Board
  attr_reader :board

  @@winning_conditions = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [2, 4, 6]
  ]

  def initialize
    @board = [
      ' ', ' ', ' ',
      ' ', ' ', ' ',
      ' ', ' ', ' '
    ]
  end

  def draw_board
    system 'clear'
    puts " #{board[0]} | #{board[1]} | #{board[2]}"
    puts '-----------'
    puts " #{board[3]} | #{board[4]} | #{board[5]}"
    puts '-----------'
    puts " #{board[6]} | #{board[7]} | #{board[8]}"
  end

  def check_spot(spot)
    @board[spot] == ' '
  end

  def mark_board(place, mark)
    @board[place] = mark
  end

  def self.winning_conditions
    @@winning_conditions
  end
end
