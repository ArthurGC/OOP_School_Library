require_relative './subclasses/create_person'
require_relative './subclasses/create_book'
require_relative './subclasses/create_rentals'
require_relative './subclasses/show_info'

class App
  attr_reader :books, :people, :rentals

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

    option = gets.chomp.to_i
    check_options(option)
  end

  def exit_program
    puts 'Thank you for using this app!'
    exit(true)
  end

  def check_options(option)
  person = CreatePerson.new
  book = CreateBook.new
  rental = CreateRental.new   
  info = ShowInformation.new  
  # functions = [info.all_books(@books), info.all_people(@people), person.method(:create_person),
  # book.create_book(@books), rental.create_rental(@rentals), info.all_rentals_id(@rentals)]
  # option -= 1
  # functions.each_with_index do |function, index| 
  #   next unless index == option      
  #   function.call(@people)    
  # end
  end
end
