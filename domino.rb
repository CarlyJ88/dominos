# creates domino
class Domino
  attr_accessor :left, :right
  def initialize(left, right)
    @left = left
    @right = right
  end

  def to_s
    "[#{@left}|#{@right}]"
  end
end

def create_dominos
  arr = []
  (0..6).each do |i|
    (i..6).each do |j|
      arr.push Domino.new(i, j)
    end
  end
  arr
end

all_dominos = create_dominos

p1 = Player.new('First player', all_dominos.sample(7))
player2dominos = all_dominos - p1.dominos
p2 = Player.new('Second player', player2dominos.sample(7), 5)

puts p1
puts p2
