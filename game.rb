require "./dice"

class Player
  attr_reader :name, :dice

  def initialize(name, dice)
    @name = name
    @dice = dice
  end
end


class Game
  # Players roll their dice until someone wins
  def initialize
  end

  def get_dice
  end

  def predictability
  end

  def winner_winner_chicken_dinner
  end
end
