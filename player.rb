# creates player
class Player
  attr_accessor :name, :dominos, :score
  def initialize(name, dominos, score = 0)
    @name = name
    @dominos = dominos
    @score = score
  end

  def to_s
    "#{@name}: #{@dominos.map(&:to_s)}: score = #{@score}"
  end
end
