class Person
    attr_accessor :name
    attr_accessor :age
    attr_reader :id

    def initialize(age, name = "Unknown", parent_permission = true)
        @id = Random.rand(1..1000)
        @name = name
        @age = age
    end

    private def is_of_age?
        if @age >= 18
            true
        else
            false
        end
    end
end
