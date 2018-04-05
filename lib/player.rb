class Player

attr_reader :name, :hitpoints
def initialize(name)
  @name = name
  @hitpoints = 50
end

# def attack(player)
#   player.take_damage(10)
# end

def take_damage(amount)
  @hitpoints -= amount
end


end
