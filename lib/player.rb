class Player
  attr_reader :name
  attr_accessor :hitpoints
  def initialize(name)
    @name = name
    @hitpoints = 60
  end
  def reduce_hitpoints_after_attack
    @hitpoints -= 10
  end
end
