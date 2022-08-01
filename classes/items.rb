require 'date'

class Item
  attr_reader :genre, :author, :label, :Source, :publish_date, :archived

  def initialize(publish_date, archived: false)
    @id = Random.rand(1...1000)
    @publish_date = publish_date
    @archived = archived
  end

  def add_genre=(genre)
    @genre = genre
    genre.items << self unless genre.items.include?(self)
  end

  def add_author=(author)
    @author = author
    author.items << self unless author.items.include?(self)
  end

  def add_label=(label)
    @label = label
    label.items << self unless label.items.include?(self)
  end

  def add_source=(source)
    @source = source
    source.items << self unless source.items.include?(self)
  end

  def move_to_archive
    @archived = can_be_archived?
  end

  private

  def can_be_archived?
    date = DateTime.parse(@publish_date).to_date
    (Date.today.year - date.year) > 10
  end
end
