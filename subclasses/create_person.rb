require_relative '../classes/student.rb'
require_relative '../classes/teacher.rb'

class CreatePerson      
  def create_person(people)
    print 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
    option_person = gets.chomp

    print 'Age: '
    age = gets.chomp
    age = 18 if age == ''
    print 'Name: '
    name = gets.chomp
    name = 'Unknown' if name == ''

    case option_person
    when '1'
      print 'Has parent permission? [Y/N]: '
      has_parent_permission = gets.chomp
      has_permission = has_parent_permission.downcase == 'y'
      person = Student.new(age, name, parent_permission: has_permission)
    when '2'
      print 'Specialization: '
      specialization = gets.chomp
      specialization = 'Unknown' if specialization == ''
      person = Teacher.new(age, specialization, name)
    else
      puts 'Sorry, you choose a wrong option'
      
      return
    end

   people << person
    puts 'Person created successfully'
  end
end
