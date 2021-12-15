class Dog 
    def initialize(name, breed, birthday)
        @name = name
        @breed = breed 
        @birthday = birthday
    end

    def bark() 
        print @name + " "
        puts "ruff"
    end 

    def dog_info()
        puts "Dog Name: #@name"
        puts "Breed: #@breed"
        puts "#@name's birthday: #@birthday" 
    end

    def name()
        puts @name
    end

    def breed()
        puts @breed
    end

    def birthday()
        puts @birthday
    end

    def change_name(name)
        @name = name 
        puts @name
    end 

    def change_birthday(birthday)
        @birthday = birthday 
        puts @birthday
    end 

    def change_breed(breed)
        @breed = breed 
        puts @breed
    end 
end

#Create Dog Objects
dog1 = Dog.new("Bean", "Maltipoo/Chihuaha", "04/20/2020")
dog2 = Dog.new("Luna", "Chihuhua", "03/15/2000")

#Method calling 
dog1.dog_info
dog1.bark

puts"\n"

dog2.dog_info
dog2.bark

puts"\n"

print "Dog num 2 with changed name!: "
dog2.change_name("Mikey")
dog2.dog_info

puts"\n"
print "Dog 1 and Dog 2 names: "
puts"\n"
dog1.name
dog2.name