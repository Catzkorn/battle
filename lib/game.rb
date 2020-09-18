class Game
  attr_reader :player_one, :player_two, :whose_turn

  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
    @whose_turn = @player_one.name
  end

  def attack(player)
    player.take_damage
  end

  def switch_turn
    @whose_turn == @player_one.name ? @whose_turn = @player_two.name : @whose_turn = @player_one.name
  end
end
