require_relative './subclasses/create_person'
require_relative './subclasses/create_book'
require_relative './subclasses/create_rentals'
require_relative './subclasses/show_info'
require 'json'

class App
  attr_accessor :books, :people, :rentals
  def initialize()
    @books = load_data('books')
    @people = load_data('people')
    @rentals = load_data('rentals')
  end

  def load_data(name)       
    file = File.open("./data/#{name}.json", 'a')
    show = File.read("./data/#{name}.json")
    if show != ''
      JSON.parse(show)
    end
    []
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
