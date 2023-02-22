class Player

  @@num_of_players = 1

  attr_reader :id, :symbol

  def initialize(symbol)
    @symbol = symbol
    @id = @@num_of_players

    @@num_of_players += 1
  end

end
