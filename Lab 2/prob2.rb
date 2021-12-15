def mysterious_total(subtotal: 100, tax: 10, discount:5)  
    puts subtotal + tax - discount
    puts "\n"
end

#default
puts "default parameters:"
mysterious_total(subtotal: 100, tax: 10, discount: 5)

#order switched
puts "order switched:"
mysterious_total(tax: 10, discount: 5, subtotal: 100)

#splat
puts "double splat"
results = {subtotal: 100, tax: 10, discount: 5}
mysterious_total(**results)