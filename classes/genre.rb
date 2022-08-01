class Genre
  attr_accessor :name, :items
  
  def initialize(name)
    @id = Random.rand(1...1000)
    @name = name
    @items = []
  end

  def add_items(item)
    @items << item unless @items.include?(item)
    item.add_genre = self
  end
end