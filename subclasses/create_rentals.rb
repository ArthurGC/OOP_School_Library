require_relative '../classes/rental.rb'

class CreateRental

  def book_selection(books)
    puts 'Select a book from the following list by number'
    books.each_with_index { |book, index| puts "#{index}) Title: \"#{book.title}\", Author: #{book.author}" }
    number_book = gets.chomp.to_i
  end

  def person_selection(people)
    puts "\nSelect a person from the following list by number(not id)"
    people.each_with_index do |person, index|
      puts "#{index}) [#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end
    number_people = gets.chomp.to_i
  end

  def date_selection
    print "\nDate: "
    date = gets.chomp
  end
    
  def create_rental(books, people, rentals)
    rental = Rental.new(date_selection, people[person_selection(people)], books[book_selection(books)])
    rentals << rental unless rentals.include?(rental)   
  end
end  
