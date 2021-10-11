class Person
    attr_accessor :name
    attr_accessor :age
    attr_reader :id

    def initialize(age, name = "Unknown", parent_permission = true)
        @id = Random.rand(1..1000)
        @name = name
        @age = age
    end
end
