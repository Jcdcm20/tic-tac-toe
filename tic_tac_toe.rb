class Board
  @@board = 
  [
    {top_left: ' ', top_mid: ' ', top_right: ' '},
    {mid_left: ' ', mid: ' ', mid_right: ' '},
    {bot_left: ' ', bot_mid: ' ', bot_right: ' '}
  ]

  def draw_board
    puts 'TIC TAC TOE'
    puts '___________'
    @@board.each do |row|
      print '|'
      row.each do |k, v|
        print row[k]

      end
      print '|'
      puts ''
    end
  end
end

board = Board.new

board.draw_board