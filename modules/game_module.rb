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
  
      @app.add_game([game_name, last_played_at, multiplayer])
      add_new_author_details
    end
  
    
  end