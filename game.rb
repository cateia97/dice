require "./dice"

class Player
  attr_reader :name, :dice, :roll_result

  def initialize(name, dice)
    @name        = name
    @dice        = dice
    @roll_result = nil
  end

  def roll_dice
    @roll_result = @dice.roll
  end
end

class Game
  # Players roll their dice until someone wins
  attr_reader :player1, :player2, :winner, :turn

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @winner  = nil
    @turn    = 0
  end

  def play!
    while @winner == nil      
      @turn += 1

      @player1.roll_dice
      @player2.roll_dice

      if @player1.roll_result == @player2.roll_result
        next
      elsif @player1.roll_result > @player2.roll_result
        @winner = @player1
      elsif @player2.roll_result > @player1.roll_result
        @winner = @player2
      end            
    end
  end
end