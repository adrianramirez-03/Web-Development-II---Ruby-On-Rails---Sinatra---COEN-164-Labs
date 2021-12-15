module Greetings
    def english
        puts "Hello!"
    end

    def french
        puts "Bonjour!"
    end

    def spanish
        puts "Hola!"
    end
end

class Hello
    include Greetings
    
   
    def self.english

    end
    
    def self.spanish

    end
    
    def self.french 

    end
end


puts "Part A"
puts "---------"
hello = Hello.new
hello.english
hello.spanish
hello.french
