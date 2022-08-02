require_relative './items'

class MusicAlbum < Item
  attr_accessor :on_spotify, :name
  attr_reader :items

  def initialize(on_spotify, name, publish_date)
    super(publish_date)
    @on_spotify = on_spotify
    @name = name
  end

  def can_be_archived?
    super && @on_spotify
  end
end

# App.rb :

# require './modules/music_album_module'
# require_relative './classes/music_albums'
# require_relative './classes/genre'

# def list_all_albums
#   puts "\nNote: No albums available." if @albums.empty?

#   puts "\n----------------------------"
#   puts "\nALL ALBUMS\n\n"
#   puts "\Genre \t| On spotify? \t| Album Name \t| Publish Date"
#   puts '-------------------------------------------------------'
#   @albums.each do |album|
#     puts "#{album['genre'].to_s.strip} \t| #{album['on_spotify?']
#     .to_s.strip.rjust(10)} \t| #{album['album_name'].to_s.strip.rjust(10)} \t| #{album['publish_date']
#     .to_s.strip.rjust(10)}"
#     puts "\n---------------------------------------------------"
#   end
# end


# def list_all_genres
#   puts "\nNote: No genres available." if @genres.empty?

#   puts "\n----------------------------"
#   puts "\nALL GENRES\n\n"
#   puts "\Name"
#   puts '----------------------------'
#   @genres.each do |genre|
#     puts genre['genre_name'].to_s.strip
#     puts "\n----------------------------"
#   end
# end

# def add_album(album_name, publish_date, genre_name, on_spotify)
#   new_album_instance = MusicAlbum.new(on_spotify, album_name, publish_date)
#   new_genre_instance = Genre.new(genre_name)
#   new_album_instance.genre = new_genre_instance

#   hash = {
#     'album_name' => new_album_instance.name,
#     'publish_date' => new_album_instance.publish_date,
#     'on_spotify?' => new_album_instance.on_spotify,
#     'genre' => new_genre_instance.name
#   }

#   genre_hash = {
#     'genre_name' => new_genre_instance.name
#   }

#   @albums << hash
#   @genres << genre_hash

#   preserve_files
# end

# main :

# when '9'
#   add_new_album_details

# def main
#   app = App.new
#   app.load_data
#   app.start_program
# end