class Game

  attr_reader :current_turn

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_turn = player_1
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def attack(player)
    player.receive_damage
  end

  def switch_turn
    @current_turn = opponent_of(current_turn)
  end

  def opponent_of(the_player)
    @players.select { |player| player != the_player }.first
  end
  
  def game_over?
    losing_players.any?
  end

  def losing_players
    @players.select { |player| player.hp <= 0 }
  end

  def loser
    losing_players.first
  end

end