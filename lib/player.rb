require_relative "game"

class Player
  attr_reader :name, :hp

  DEFAULT_HP = 60

  def initialize(name, hp = DEFAULT_HP)
    @name = name
    @hp = hp
  end

  def take_damage
    @hp -= 10
  end
end
