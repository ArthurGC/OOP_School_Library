require_relative './subclasses/create_person'
require_relative './subclasses/create_book'
require_relative './subclasses/create_rentals'
require_relative './subclasses/show_info'

class App
  attr_accessor :books, :people, :rentals

  def initialize(books = [], people = [], rentals = [])
    @books = books
    @people = people
    @rentals = rentals
  end

  def ui_init
    puts "\nPlease choose an option by entering a number:"
    puts '1 - List all books'
    puts '2 - List all people'
    puts '3 - Create a person'
    puts '4 - Create a book'
    puts '5 - Create a rental'
    puts '6 - List all rentals for a given person id'
    puts '7 - Exit'

    gets.chomp
  end
end
