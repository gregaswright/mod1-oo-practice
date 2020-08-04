class Patient

    attr_accessor :name, :age

    def initialize(name, age)
        @name = name
        @age = age
    end

end

jim = Patient.new("Jim", 25)
sarah = Patient.new("Sarah", 15)
tom = Patient.new("Tom", 45)