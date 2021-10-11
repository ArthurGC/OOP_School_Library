require_relative './person'

class Teacher < Person
  def initialize(age, specialization, **args)
    super(age, **args)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
