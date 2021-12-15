def varArgs(*lots)
    puts "The # of parameters is: #{lots.length()}"
    puts "The parameters are:"
    puts lots
end

varArgs("Adrian", "Ramirez", "360", "I love pizza")