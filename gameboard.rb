# adds dominos to the gameboard if number on the domino side is a match
class Gameboard
  attr_accessor :dominos

  def initialize
    @dominos = []
  end

  def add_to_left(domino)
    @dominos.unshift(domino)
  end

  def add_to_right(domino)
    @dominos.push(domino)
  end

  def left_side_of_board
    @dominos.first.left
  end

  def right_side_of_board
    @dominos.last.right
  end

  def can_place_domino(domino)
    if @dominos == []
      true
    else
      are_the_sides_matching(domino)
    end
  end

  private

  def are_the_sides_matching(domino)
    [domino.left, domino.right] & [left_side_of_board, right_side_of_board] != []
  end
end
