puts "I am creating ingredients"

Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")

puts " we have now #{Ingredient.count} ingredients"
