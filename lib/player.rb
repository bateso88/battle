class Player

  attr_reader :name, :hp

  DEFAULT_HP = 60

  def initialize(name: )
    @name = name
    @hp = DEFAULT_HP
  end

  def take_damage
    @hp -= 10
  end

end