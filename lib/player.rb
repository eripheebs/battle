class Player
  START_POINTS = 100
  DEDUCT_POINTS = 10
  attr_reader :name, :points

  def initialize(name)
    @name = name
    @points = START_POINTS
  end

  def attack(player)
    player.deduct
  end

  def deduct
    @points -= DEDUCT_POINTS
  end

end
