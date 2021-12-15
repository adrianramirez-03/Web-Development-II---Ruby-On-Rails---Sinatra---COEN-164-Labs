require 'erb'

def shopping_items
    ['milk', 'egg', 'ham', 'bread']
end

def template
    %{
        <html>
        <head>
        </head>
        <body>
        <h1> Shopping List for <%= @date.strftime('%A, %d, %B, %Y')%>
        <p> You need to buy </p>
        <ul>
            <%for item in @shop_items %>
                <li> <%= item %> </li>
            <% end %>
        </ul>
        </body>
        </html>
    }
end

class ShoppingList
    include ERB::Util
    attr_accessor :template, :shop_items, :date

    def initialize(items, temp, date=Time.now)
         @shop_items = items
         @template = temp
         @date = date

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

list = ShoppingList.new(shopping_items, template)
list.output('shoppinglist.html')

