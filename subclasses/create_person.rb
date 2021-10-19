require_relative '../classes/student.rb'
require_relative '../classes/teacher.rb'

class CreatePerson  
  def get_name
    print 'Name: '
    name = gets.chomp
    name = 'Unknown' if name == ''
    name
  end

  def get_age
    print 'Age: '
    age = gets.chomp
    age = 18 if age == ''
    age
  end

  def has_permission
    print 'Has parent permission? [Y/N]: '
    has_parent_permission = gets.chomp
    has_permission = has_parent_permission.downcase == 'y'
    has_permission
  end

  def get_specialization
    print 'Specialization: '
      specialization = gets.chomp
      specialization = 'Unknown' if specialization == ''
  end

  def create_person(people)
    print 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
    option_person = gets.chomp
    case option_person
    when '1' 
      person = Student.new(get_age, get_name, parent_permission: has_permission)
    when '2'
      age = get_age
      name = get_name  
      specialization = get_specialization
      person = Teacher.new(age, specialization, name)
    else
      puts 'Sorry, you choose a wrong option'      
      return
    end

   people << person
    puts 'Person created successfully'
  end
end
