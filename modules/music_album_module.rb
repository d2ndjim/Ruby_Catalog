module MusicAlbumModule
  def capture_input(request_text)
    print "#{request_text}: "
    gets.chomp
  end

  def add_new_album_details
    puts "\n-------------------------------"
    puts "\nENTER MUSIC ALBUM DETAILS\n\n"

    album_name = capture_input('Input album name')
    publish_date = capture_input('Input relase date[yyyy/mm/dd]')
    genre_name = capture_input('Input genre name')
    on_spotify = capture_input('Is album on Spotify?[Y/N]')

    on_spotify = on_spotify == 'Y' || false

    @app.add_album(album_name, publish_date, genre_name, on_spotify)
    puts "\nNew Album Added!"
    puts "\n-------------------------------"
  end
end
