class App
  attr_reader :books, :people, :rentals

  def initialize(books = [], people = [], rentals = [])
    @books = books
    @people = people
    @rentals = rentals
  end

  def all_books
    @books.each {|book| puts "Title: #{book.title}, Author: #{book.author}"}
  end

  def all_people
    @people.each {|person| puts "[#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"}
  end
end
