require_relative './classes/genre'
require_relative './classes/items'

describe Genre do
  genre = Genre.new('pop')
  item = Item.new('2022/01/01')

  it 'creates a new Genre' do
    expect(genre).to be_an_instance_of Genre
  end

  it 'add genre to array' do
    genre.add_items(item)
    expect(genre.items.length).to eq 1
  end
end
