string = "abc12def34ghi56jkl78mn98op76qrs"
string.gsub!(/[\d]/,"-")
puts string
puts
string = "abc12def34ghi56jkl78mn98op76qrs"
puts string.scan(/\d+/)

puts
string = "abc12def34ghi56jkl78mn98op76qrs"
print string.scan(/\d+/).first
puts

puts
string = "abc12def34ghi56jkl78mn98op76qrs"
string.gsub!(/[a-z]/, "-")
puts string

