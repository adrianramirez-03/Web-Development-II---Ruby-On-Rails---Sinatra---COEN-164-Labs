module Dojo
    A = 4
    module Kata
        B = 8
        module Roulette
            class Scopeln
                def self.push
                    15
                end
            end
        end
    end
end
A = 16
B = 23
C = 42


puts Dojo::A
puts Dojo::Kata::B

puts
puts A
puts B
puts C
puts

obj = Dojo::Kata::Roulette::Scopeln.push
puts obj