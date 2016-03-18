class Game
@current_game = nil

  def self.start(player1, player2, player_klass=Player)
    player_1 = player_klass.new player1
    player_2 = player_klass.new player2
    @current_game = self.new(player_1, player_2)
  end

  def self.current_game
    @current_game
  end

  attr_reader :player_swapper

  def initialize(player1, player2)
    @players = [player1, player2]
    @player_swapper = [player1, player2]
  end

  def player1
    @players.first
  end

  def player2
    @players.last
  end

  def attack
    @player_swapper[1].deduct
    swap
  end

  def swap
    @player_swapper.reverse!
  end

  def game_over?
    player1.dead? || player2.dead?
  end

end
