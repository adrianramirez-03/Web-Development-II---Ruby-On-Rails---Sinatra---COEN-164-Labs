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


include Greetings
class Hello
    def english
        Greetings.english
    end
    def spanish
        Greetings.spanish
    end
    def english
        Greetings.french
    end
end

puts "Part B"
puts "---------"
Hello.spanish()
Hello.english()
Hello.french()
puts