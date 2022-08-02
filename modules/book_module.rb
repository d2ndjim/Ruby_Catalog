module BookModule
  def capture_input(request_text)
    print "#{request_text}: "
    gets.chomp
  end

  def add_new_book_details
    puts "\n-------------------------------"
    puts "\nENTER BOOK DETAILS\n\n"

    publisher = capture_input('Input publisher name')
    publish_date = capture_input('Input published date[yyyy/mm/dd]')
    cover_state = capture_input('Input cover state eg:(good or bad)')

    add_book([publisher, publish_date, cover_state])
    add_new_label_details
  end

  def add_new_label_details
    puts "\nENTER LABEL DETAILS\n\n"

    title = capture_input('Input label title(Gift, New, e.t.c)')
    color = capture_input('Input label color')

    add_label([title, color])
    puts "\nNew Book and Label Added!"
    puts "\n-------------------------------"
  end
end

# TO BE ADDED IN APP
# require_relative './classes/book'
# require_relative './classes/label'
# def add_book(new_book)
#     new_book_instance = Book.new(*new_book)
#     hash = {
#       'publisher' => new_book_instance.publisher,
#       'publish_date' => new_book_instance.publish_date,
#       'cover_state' => new_book_instance.cover_state
#     }
#     @books << hash
#   end

#   def add_label(new_label)
#     new_label_instance = Label.new(*new_label)
#     hash = {
#       'title' => new_label_instance.title,
#       'color' => new_label_instance.color
#     }
#     @labels << hash
#   end

# TO BE INCLUDED IN MAIN
# require './modules/book_module'
# include BookModule
# add_new_book_details
