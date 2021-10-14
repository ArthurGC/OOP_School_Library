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
        @people << person
        puts "Person created successfully"
  end
end
