require_relative './student.rb'
require_relative './teacher.rb'
require_relative './book.rb'
require_relative './rental.rb'

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

  def create_person
    print 'Do you want to create a student (1) or a teacher (2)? [Input the number]:'
    optionPerson = gets.chomp

    print "Age: "
    age = gets.chomp
    if age == ''
        age = 18            
    end
    print "Name: "
    name = gets.chomps
    if name == ''
        name = 'Unknown'            
    end

    case optionPerson
    when '1'
        print "Has parent permission? [Y/N]: "
        has_parent_permission = gets.chomp
        if has_parent_permission.downcase == 'y'
            has_permission = true
        elsif has_parent_permission.downcase == 'n'
            has_permission = false
        else
            has_permission = true
        end
        person = Student.new(age, name, parent_permission: has_permission)
    when '2'
        print "Specialization: "
        specialization = gets.chomp
        if specialization == ''
            specialization = 'Unknown'            
        end
        person = Teacher.new(age, specialization, name)
    else
        puts 'Sorry, you choose a wrong option'
    end
        @people << person unless @people.include?(person)
        puts "Person created successfully"
  end

  def create_book
      print "Title: "
      title = gets.chomp
      print "Author: "
      author = gets.chomp

      book = Book.new(title, author)
      @books << book unless @books.include?(book)
      puts "Book created successfully"
  end

  def create_rental
      puts "Select a book from the following list by number"
      @books.each {|book, index| puts "#{index}) Title: #{book.title}, Author: #{book.author}"}
      number_book = gets.chomp
      puts
      puts "Select a person from the following list by number(not id)"
      @people.each {|person, index| puts "#{index}) [#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"}
      number_people = gets.chomp
      puts
      print "Date: "
      date = gets.chomp
      rental = Rental.new(date, @people[number_people], @books[number_book])
      @rentals << rental unless @rentals.include?(rental)
  end

  def all_rentals_id
    print "ID of person: "
    id = gets.chomp
    rentals_of_person = @rentals.filter {|rental| rental.person.id == id}
    rentals_of_person.each {|rental| puts "Date: #{rental.date}, Book: #{rental.book.title} by #{rental.book.author}"}
  end
end
