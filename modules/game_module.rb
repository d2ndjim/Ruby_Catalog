module GameModule
  def capture_input(request_text)
    print "#{request_text}: "
    gets.chomp
  end

  def add_new_game_details
    puts "\n-------------------------------"
    puts "\nENTER GAME DETAILS\n\n"

    game_name = capture_input('Input game name')
    last_played_at = capture_input('Input Last played date[yyyy/mm/dd]')
    multiplayer = capture_input('Is the game Multiplayer?[Y/N]')

    multiplayer = multiplayer == 'Y' || true

    add_game([game_name, last_played_at, multiplayer])
    add_new_author_details
  end

  def add_author(new_author)
    new_author_instance = Author.new(*new_author)
    hash = {
      'first_name' => new_author_instance.first_name,
      'last_name' => new_author_instance.last_name
    }
    @authors << hash
  end

  def add_new_author_details
    puts "\n-------------------------------"
    puts "\nENTER AUTHOR DETAILS\n\n"

    first_name = capture_input('Input Author Fist Name')
    last_name = capture_input('Input Author Last Name')

    add_author([first_name, last_name])
    puts "\nNew Game and Author Added!"
    puts "\n-------------------------------"
  end
end
