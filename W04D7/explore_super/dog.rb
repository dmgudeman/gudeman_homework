require_relative "animal"
class Dog < Animal
    def initialize(num) 
        super()
        @legs = num
    end

    def legs
       p @legs
    end

end
a = Animal.new

d = Dog.new(4)

d.legs
d.size

