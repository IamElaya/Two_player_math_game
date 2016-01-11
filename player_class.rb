class Player
  attr_accessor :score, :life

  def initialize (score = 0, life = 3)
    @score = score
    @life = life
  end

  def alive?
    @life > 0
  end

  def lose_life
    @life -= 1
  end

  def gain_points
    @score += 1
  end

end