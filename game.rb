class Game

  def initialize
    @board = Board.new
    @player_x = Player.new('X')
    @player_o = Player.new('O')
    @current_player = @player_x
    @winner = false
  end

  def play
    until @winner
      @board.draw_board
      puts "Where do you want to put your #{@current_player.symbol} (0 - 8)"
      input

      if check_win
        @winner = true
        @board.draw_board
        puts "Congratulations! #{@current_player.symbol} has won!!!"
      elsif check_draw
        @board.draw_board
        puts "It's a draw!"
        break
      else
        @current_player = change_player
      end
    end
  end

  def input
    spot = gets.chomp.to_i
    if spot < 0 || spot > 8
      @board.draw_board
      puts 'Please enter a number between 0-8'
      input
    elsif @board.check_spot(spot)
      @board.mark_board(spot, @current_player.symbol)
    else
      puts 'Spot already taken! Try again.'
      input
    end
  end

  def change_player
    @current_player == @player_x ? @player_o : @player_x
  end

  def check_win
    Board.winning_conditions.any? { |condition| condition.all? { |index| @board.board[index] == @current_player.symbol } } ? true : false
  end

  def check_draw
    @board.board.all? { |square| square != ' ' } ? true : false
  end
end
