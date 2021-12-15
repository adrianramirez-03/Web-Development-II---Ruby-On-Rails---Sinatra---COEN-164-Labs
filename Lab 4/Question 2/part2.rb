require 'erb'

def shopping_items
    ['milk', 'egg', 'ham', 'bread']
end

class ShoppingList
    include ERB::Util
    attr_accessor :template, :shop_items, :date

    def initialize(items, temp, date=Time.now)
         @shop_items = items
         
         @date = date
         @template = ""
         i = 0
         File.open("#{temp}", "r") do |file| #we are reading the erb file and assigning it to the empty template str. then the same process applies as in part 1!
             file.readlines.each do |line|
                 @template += line
                 i += 1
             end
         end
     
        stringTemplate(@template)
        save("shoppinglist.html")
    end

    def stringTemplate(templ)
        tempstr = ""
        (0..(templ.length())).each do |a| #scanning all the template file and storing it in the str string
            tempstr += templ[a].to_s
        end

        html = File.new("shoppinglist.html", "w+")
        html.puts(tempstr)
        html.close
    end
    
    def save(htmlfile) #we are saving the html file created in stringTemplate and we are running scanruby to make sure there is not ruby code inside of it
        File.open(htmlfile, "w+") do |f|
            f.write(scanruby)
        end
    end

    def scanruby() #found a resource online that scans the ruby code in the template file and executes it. Essentially it filters the ruby code
        ERB.new(@template).result(binding)
    end

    
    def output(*arg) #We are defining the output method to print out the file. it reads each line and prints them in order
        File.open("#{arg[0]}", "r") do |file|
            file.readlines.each do |line|
                puts line
            end
        end
    end
end

list = ShoppingList.new(shopping_items, 'list.html.erb')
list.output('shoppinglist.html')