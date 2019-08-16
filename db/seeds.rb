require 'open-uri'

Dose.delete_all
Cocktail.delete_all
Ingredient.delete_all

puts "I am creating ingredients"
ingredient1 = Ingredient.create(name: "lemon")
ingredient2 =Ingredient.create(name: "ice")
ingredient3 =Ingredient.create(name: "mint leaves")
ingredient4 =Ingredient.create(name: "rhum")
puts " we have now #{Ingredient.count} ingredients"


puts "I am now creating cocktail"
url1 = "http://www.bbcgoodfood.com/sites/default/files/styles/recipe/public/recipe/recipe-image/2013/11/mojito-cocktails.jpg?itok=7ZS6egg_"
url2 = "http://www.monstercocktails.com/image/279/645"
url3 = "https://705628.smushcdn.com/1130679/wp-content/uploads/2019/05/20rustic-cocktail.jpg?lossy=1&strip=1&webp=1"
url4 = "https://www.thespruceeats.com/thmb/VUIEfKs1iqGuO9FHqY4eYzPg6Ks=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/NavyGrogCocktail-565092779-577437e33df78cb62c3c37fd.jpg"
url5 = "https://cocktailcollective.com.au/wp-content/uploads/2018/10/Surprise-Sour-565x565.jpg"

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

Dose.create(description: "6 cl", cocktail: cocktail1, ingredient: ingredient1)

Dose.create(description: "10 cl", cocktail: cocktail1, ingredient: ingredient2)
Dose.create(description: "3 cl", cocktail: cocktail2, ingredient: ingredient1)
Dose.create(description: "1 spoon", cocktail: cocktail2, ingredient: ingredient3)
Dose.create(description: "20 cl", cocktail: cocktail3, ingredient: ingredient4)
Dose.create(description: "5 cl", cocktail: cocktail3, ingredient: ingredient1)
Dose.create(description: "a bit", cocktail: cocktail4, ingredient: ingredient3)
Dose.create(description: "5 cl", cocktail: cocktail4, ingredient: ingredient4)

puts "I have now created #{Dose.count} dose"

