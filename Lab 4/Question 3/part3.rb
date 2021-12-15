require 'erb'

def description
    [
        'Ruby makes your programming more productive',
        'It makes coding fun again',
        'If you are a programmer and want to learn Ruby',
        'This is the book to get',
        'This book will get you up to speed quickly and enjoyably'
    ]
end

class Booklist
    include ERB::Util
    attr_accessor :template, :title, :description, :author, :price

    def initialize(t1tle, auth0r, dscrp, pri, temp)
         @description = dscrp
         @title = t1tle
         @author = auth0r
         @price = pri

         @template = ""
         i = 0
         File.open("#{temp}", "r") do |file| #reading the template file and assigning it to the empty template string. We then apply the same methods as in part 1 and 2
            file.readlines.each do |line|
                @template += line
                i += 1
            end
        end

        stringTemplate(@template)
        save("bookpage.html")
    end

    def stringTemplate(templ)
        tempstr = ""
        (0..(templ.length())).each do |a| #scanning all the template file and storing it in the str string
            tempstr += templ[a].to_s
        end

        html = File.new("bookpage.html", "w+")
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

    def add_description(desc)
        @description << desc
        save("bookpage.html")
    end

    def output(*arg) #We are defining the output method to print out the file. it reads each line and prints them in order
        File.open("#{arg[0]}", "r") do |file|
            file.readlines.each do |line|
                puts line
            end
        end
    end

end

list = Booklist.new("Programming Ruby (978-1-93778-549-9)", "Dave Thomas", description, "$50.00", 'booktemplate.html.erb')
list.output('bookpage.html')
list.add_description('testing add description method')
list.output('bookpage.html')
