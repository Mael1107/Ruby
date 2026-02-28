class People
    attr_accessor :name, :age

    def initialize(name, age)
      @name = name
      @age = age
    end

    def salute
      puts "Hi! My name is #{@name} and i am #{@age} years old."
    end
end

person = People.new("Ismael", 18)
person.salute