

class Game

  attr_accessor :player_one, :player_two, :turn, :winner

  ATTACK_DAMAGE = 10
  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
    @turn = player_one
    @winner = nil
  end

  def attack(attacker, attacked)

    attacked.take_damage(ATTACK_DAMAGE)
    if attacked.dead?
      set_winner(attacker)
    else
      @turn = attacked
    end


  end

  def set_winner(player)
    @winner = player
  end

  def won?
    @winner != nil
  end


end
