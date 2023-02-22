class Board
  @@board =
  [
    {top_left: ' _ ', top_mid: ' _ ', top_right: ' _ '},
    {mid_left: ' _ ', mid: ' _ ', mid_right: ' _ '},
    {bot_left: ' _ ', bot_mid: ' _ ', bot_right: ' _ '}
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