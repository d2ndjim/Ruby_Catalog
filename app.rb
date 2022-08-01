class App
  def initialize
    @books = []
    @albums = []
    @authors = []
    @genres = []
    @labels = []
    @sources = []
    @games = []
  end
  def start_program
    puts 'Welcome to the catalog app'
    until list_of_options
      input = gets.chomp
      if input == '0'
        puts 'Thank you for using our app'
        break
      end
      option(input)
    end
  end
  def list_all_books
    puts 'No available books' if @books.empty?
    @books.each { |book| puts "label: #{book.label}, published on: #{book.publish_date}" }
  end
  def list_all_albums
    puts 'No available albums' if @albums.empty?
    @albums.each { |album| puts "genre: #{album.genre}, published on: #{album.publish_date}" }
  end
  def list_all_games
    puts 'No available games' if @games.empty?
    @games.each { |game| puts "genre: #{game.genre}, published on: #{game.publish_date}" }
  end
  def list_all_genres
    puts 'No available genre' if @genres.empty?
    @genres.each { |genre| puts "genre: #{genre.name}" }
  end
  def list_all_labels
    puts 'No available label' if @labels.empty?
    @labels.each { |label| puts "label: #{label.title}, color: #{label.color}" }
  end
  def list_all_authors
    puts 'No available authors' if @authors.empty?
    @authors.each { |author| puts "author: #{author.first_name} #{author.last_name}" }
  end
  def list_all_sources
    puts 'No available sources' if @sources.empty?
    @sources.each { |source| puts "source: #{source.name}" }
  end
end