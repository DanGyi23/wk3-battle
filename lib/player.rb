class Player
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def hit_points
    100
  end
end