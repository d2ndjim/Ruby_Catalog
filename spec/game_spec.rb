require_relative '../classes/game'

describe Game do
  context 'Game tests' do
    before :each do
      @game = Game.new('Fifa 2022', 'Y', '2010-08-06')
    end

    it 'should be a Game class instance' do
      expect(@game).to be_an_instance_of Game
    end

    it 'should return a correct Game name' do
      expect(@game.game_name).to eq 'Fifa 2022'
    end

    it 'should return true since the game is multiplayer' do
      expect(@game.multiplayer).to eq 'Y'
    end

    it 'should return the date the game was last played' do
      expect(@game.last_played_at).to eq '2010-08-06'
    end
  end
end
