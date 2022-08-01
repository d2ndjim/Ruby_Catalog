class App
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
end
