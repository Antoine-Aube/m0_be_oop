# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string

class Unicorn
    attr_reader :name, :color 
    def initialize(name)
        @name = name
        @color = "Silver"
    end
   
    def say(string)
        "*~* #{string} *~*"
    end
end

unicorn1 = Unicorn.new("Sparkles")

p unicorn1.say("hullooo")
p unicorn1.color

#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false

class Vampire
    attr_reader
    def initialize(name, pet = "bat", thirsty)
    @name = name 
    @pet = pet
    @thirsty = true
    end 
    def is_hungry
        @thirsty = false
    end 
end 

vampire1 = Vampire.new("Mortimer", "squirrel")

p vampire1
p vampire1.is_hungry


#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry


class Dragon 
    attr_reader :name, :rider, :color, :is_hungry
    def initialize(name, rider, color)
    @name = name
    @rider = rider
    @color = color
    @is_hungry = true
    @times_eaten = 0
    end 
    def eat
        @times_eaten += 1
    
        if @times_eaten >= 4
            @is_hungry = false
        end 
    end

end
    
dragon1 = Dragon.new("Tor", "Jeff", "Silverish",)

p dragon1
# dragon1.eat
# dragon1.eat
# dragon1.eat
3.times {dragon1.eat}
p dragon1.is_hungry

#Cydnee showed the .times method during study hall, I did it both manually and with that method to experiment with bot
# Tyler also showed us his method above which I attempted to replicate and it worked! Shout out to Tyler. 


#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.

class Hobbit
    attr_reader :name, :disposition, :age, :is_adult, :is_old, :has_ring
    def initialize(name, disposition, age = 0)
        @name = name
        @disposition = disposition
        @age = age
        @is_adult = false
        @is_old = false
        @has_ring = false
    end 
    def celebrate_birthday 
        @age += 1
        if @age >= 101
            @is_old = true
        end 
        if @age >= 33
            @is_adult = true
        end 
    end 
    def has_ring_of_power
        if @name == "Frodo"
            @has_ring = true
        end 
    end 
end 

hobbit1 = Hobbit.new("Frodo", "Ornery but kind", 30)

p hobbit1
7.times {hobbit1.celebrate_birthday}
p hobbit1.is_adult
p hobbit1.has_ring_of_power
80.times {hobbit1.celebrate_birthday}
p hobbit1.is_old

p hobbit1.age
#That was really fun! Used similar solutions as for the last one. Created my own has_ring_of_power method, but realized afterward that that wasn't necessary!