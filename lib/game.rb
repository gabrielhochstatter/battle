class Game

  ATTACK_DAMAGE = 10
  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
  end

  def attack(attacker, attacked)
    attacked.take_damage(ATTACK_DAMAGE)
  end



end
