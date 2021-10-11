require_relative './person'

class Student < Person
  def initialize(age, classroom, **args)
    super(age, **args)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
