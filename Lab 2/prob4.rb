class Box
    def initialize(weight, height)
        @weight = weight
        @height = height
    end

    def fill(char)
        @char = char
    end

    def flip 
        temp = @weight
        @weight = @height 
        @height = temp
    end 

    def draw 
        print "+"
        for i in 1..(@weight-2) do
            print "-"
        end
        puts "+"
        
        for j in 1..(@height-2) do
            print "|" 
            for k in 1..(@weight-2) do
                print @char
            end
            puts "|"
        end 
        print "+"
        
        for i in 1..(@weight-2) do
            print "-"
        end
        puts "+"
    end

    def weight()
        print @weight 
    end
    
    def height()
        print @height
    end 

    def char()
        puts @char
    end
end


#b1
b1 = Box.new(10, 4)
#b1 info 
print "b1 = Box " 
b1.weight()
print "x"
b1.height()
print ", fill:"
b1.char()




#b1 draw 
b1.fill(" ")
b1.draw

print"\n"

#b2
b2 = Box.new(5, 12)
#b2 header 
print "b2 = Box " 
b2.weight()
print "x"
b2.height()
print ", fill:"
b2.char()

#b2 drawing 
b2.fill("$")
b2.draw

print"\n"

#b3
b3 = Box.new(3, 3)
#b3 header 
print "b3 = Box " 
b3.weight()
print "x"
b3.height()
print ", fill:"
b3.char()

#b3 drawing
b3.fill("@")
b3.draw

print"\n"

#b2 flipped, filled w/ #
print "b2 flipped and filled with #:\n"
b2.flip()
b2.fill("#")
b2.draw

print "b2= Box " 
b2.weight()
print "x"
b2.height()
print ", filled with "
b2.char()