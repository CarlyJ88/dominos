#tests gameboard_spec
require 'gameboard'
describe gameboard do
it 'all dominos should be equal to empty array' do
 gameboard = Gameboard.new()
            expect(gameboard.get_dominos).to eql([])  
        end

        it 'should add domino to the begining of the array - first domino placed on board' do
            gameboard = Gameboard.new()
            domino = Domino.new(3,5)
            gameboard.add_to_left(domino)
            expect(gameboard.get_dominos).to eql([domino])  
        end

        it 'should add domino to the begining of the array' do
            gameboard = Gameboard.new()
            domino1 = Domino.new(3,5)
            domino2 = Domino.new(4,3)
            gameboard.add_to_left(domino1)
            gameboard.add_to_left(domino2)
            expect(gameboard.get_dominos).to eql([domino2,domino1])  
        end
        it 'should add domino to the end of the array' do
            gameboard = Gameboard.new()
            domino1 = Domino.new(3,5)
            domino2 = Domino.new(4,3)
            gameboard.add_to_right(domino1)
            gameboard.add_to_right(domino2)
            expect(gameboard.get_dominos).to eql([domino1,domino2])  
        end
        it 'get left number(first domino in array)' do
            gameboard = Gameboard.new()
            domino1 = Domino.new(3,5)
            gameboard.add_to_right(domino1)
            expect(gameboard.left_side_of_board()).to eql(3) 
        end 
        it 'get right number(last domino in array)' do
            gameboard = Gameboard.new()
            domino1 = Domino.new(3,5)
            gameboard.add_to_right(domino1)
            expect(gameboard.right_side_of_board()).to eql(5) 
        end 
        it 'can domino be put down?(empty board)' do
            gameboard = Gameboard.new()
            domino1 = Domino.new(3,5)
            expect(gameboard.can_place_domino(domino1)).to eql(true)
        end 
        it 'can domino be put down?(has dominos)' do
            gameboard = Gameboard.new()
            domino1 = Domino.new(3,5)
            gameboard.add_to_left(domino1)
            domino2 = Domino.new(4,6)
            expect(gameboard.can_place_domino(domino2)).to eql(false)
        end 
        it 'can domino be put down?(match leftsideofboard with rightsideofdomino)' do
            gameboard = Gameboard.new()
            domino1 = Domino.new(3,5)
            gameboard.add_to_left(domino1)
            domino2 = Domino.new(1,3)

            expect(gameboard.can_place_domino(domino2)).to eql(true)
        end 
        it 'can domino be put down?(match rightsideofboard with leftsideofdomino)' do
            gameboard = Gameboard.new()
            domino1 = Domino.new(3,5)
            gameboard.add_to_left(domino1)
            domino2 = Domino.new(5,6)

            expect(gameboard.can_place_domino(domino2)).to eql(true)
        end 
        it 'can domino be put down?(match rightsideofboard with rightsideofdomino)' do
            gameboard = Gameboard.new()
            domino1 = Domino.new(3,5)
            gameboard.add_to_left(domino1)
            domino2 = Domino.new(4,5)

            expect(gameboard.can_place_domino(domino2)).to eql(true)
        end 
        it 'can domino be put down?(match lefttsideofboard with leftsideofdomino)' do
            gameboard = Gameboard.new()
            domino1 = Domino.new(6,3)
            gameboard.add_to_left(domino1)
            domino2 = Domino.new(2,5)
            expect(gameboard.can_place_domino(domino2)).to eql(true)
        end 
    end
end