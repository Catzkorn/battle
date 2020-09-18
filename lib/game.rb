class Game
  attr_reader :player_one, :player_two, :attacker, :defender

  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
    @attacker = @player_one
    @defender = @player_two
  end

  def attack(player)
    player.take_damage
  end

  def switch_attacker
    @attacker == @player_one ? @attacker = @player_two : @attacker = @player_one
  end

  def switch_defender
    @defender == @player_one ? @defender = @player_two : @defender = @player_one
  end

end
