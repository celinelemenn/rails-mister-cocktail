puts "I am creating ingredients"

Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "rhum")

puts " we have now #{Ingredient.count} ingredients"


puts "I am now creating cocktail"

Cocktail.create(name: "Mochito")
Cocktail.create(name: "Caipichina")
Cocktail.create(name: "dark rise")
Cocktail.create(name: "grog")
Cocktail.create(name: "bad surprise")

puts "we have now #{Cocktail.all} cocktail"

puts "I am now associating doses for each cocktail"
Dose.create(description: "6 cl", cocktail_id: 1, ingredient_id: 1)
Dose.create(description: "10 cl", cocktail_id: 1, ingredient_id: 2)
Dose.create(description: "3 cl", cocktail_id: 2, ingredient_id: 1)
Dose.create(description: "1 spoon", cocktail_id: 2, ingredient_id: 3)
Dose.create(description: "20 cl", cocktail_id: 3, ingredient_id: 4)
Dose.create(description: "5 cl", cocktail_id: 3, ingredient_id: 1)
Dose.create(description: "a bit", cocktail_id: 4, ingredient_id: 3)
Dose.create(description: "5 cl", cocktail_id: 4, ingredient_id: 4)

puts "I have now created #{Dose.all}"
