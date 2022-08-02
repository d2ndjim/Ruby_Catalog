require_relative '../classes/game'
describe Game do
  game = Game.new('shark', 'yes', '2020/03/15')
  it 'it should create a new instance of Game ' do
    expect(game).to be_instance_of(Game)
  end
  it 'it should return true' do
    expect(game.can_be_archived?).to eq true
  end
end
