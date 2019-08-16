puts "I am creating ingredients"

Ingredient.delete_all

Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "rhum")

puts " we have now #{Ingredient.count} ingredients"


puts "I am now creating cocktail"

Cocktail.delete_all

url1 ="www.bbcgoodfood.com/sites/default/files/styles/recipe/public/recipe/recipe-image/2013/11/mojito-cocktails.jpg?itok=7ZS6egg_"
url2 ="http://www.monstercocktails.com/image/279/645"
url3 ="https://705628.smushcdn.com/1130679/wp-content/uploads/2019/05/20rustic-cocktail.jpg?lossy=1&strip=1&webp=1"
url4 ="https://www.thespruceeats.com/thmb/VUIEfKs1iqGuO9FHqY4eYzPg6Ks=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/NavyGrogCocktail-565092779-577437e33df78cb62c3c37fd.jpg"
url5 ="https://cocktailcollective.com.au/wp-content/uploads/2018/10/Surprise-Sour-565x565.jpg"

cocktail1 = Cocktail.new(name: "Mochito")
cocktail1.remote_photo_url = url1
cocktail1.save

cocktail2 = Cocktail.new(name: "Caipichina")
cocktail2.remote_photo_url = url2
cocktail2.save

cocktail3 = Cocktail.new(name: "dark rise")
cocktail3.remote_photo_url = url3
cocktail3.save

cocktail4 = Cocktail.new(name: "grog")
cocktail4.remote_photo_url = url4
cocktail4.save

cocktail5 = Cocktail.new(name: "bad surprise")
cocktail5.remote_photo_url = url5
cocktail5.save


puts "we have now #{Cocktail.count} cocktail"

puts "I am now associating doses for each cocktail"

Dose.delete_all

Dose.create(description: "6 cl", cocktail_id: 1, ingredient_id: 1)
Dose.create(description: "10 cl", cocktail_id: 1, ingredient_id: 2)
Dose.create(description: "3 cl", cocktail_id: 2, ingredient_id: 1)
Dose.create(description: "1 spoon", cocktail_id: 2, ingredient_id: 3)
Dose.create(description: "20 cl", cocktail_id: 3, ingredient_id: 4)
Dose.create(description: "5 cl", cocktail_id: 3, ingredient_id: 1)
Dose.create(description: "a bit", cocktail_id: 4, ingredient_id: 3)
Dose.create(description: "5 cl", cocktail_id: 4, ingredient_id: 4)

puts "I have now created #{Dose.count}"
