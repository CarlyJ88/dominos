require 'domino'
describe Domino do
  describe '.to_s' do
    it 'says left right' do
      domino = Domino.new(3,5)
      expect(domino.to_s).to eql('[3|5]')
    end
  end
end
