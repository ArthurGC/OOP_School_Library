class ShowInformation
    def all_books(books)
        books.each { |book| puts "Title: \"#{book.title}\", Author: #{book.author}" }
        
      end
    
      def all_people(people)
        people.each { |person| puts "[#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}" }
        
      end
    
      def all_rentals_id(rentals)
        print 'ID of person: '
        id = gets.chomp
        rentals_of_person = rentals.filter { |rental| rental.person.id == id.to_i }
        puts 'Rentals: '
        rentals_of_person.each do |rental|
          puts "Date: #{rental.date}, Book:\"#{rental.book.title}\" by #{rental.book.author}"
        end
        
      end
end