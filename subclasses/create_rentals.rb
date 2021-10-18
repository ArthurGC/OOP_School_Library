require_relative '../rental'

class CreateRental
    
def create_rental(books, people, rentals)
    puts 'Select a book from the following list by number'
    books.each_with_index { |book, index| puts "#{index}) Title: \"#{book.title}\", Author: #{book.author}" }
    number_book = gets.chomp
    puts
    puts 'Select a person from the following list by number(not id)'
    people.each_with_index do |person, index|
      puts "#{index}) [#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end
    number_people = gets.chomp
    puts
    print 'Date: '
    date = gets.chomp
    rental = Rental.new(date, people[number_people.to_i], books[number_book.to_i])
    rentals << rental unless rentals.include?(rental)   
  end
end  
