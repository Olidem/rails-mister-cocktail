require 'json'
require 'open-uri'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
coktails_string = open(url).read
cocktails_hash = JSON.parse(coktails_string)
cocktails_hash["drinks"].each do |cocktail|
  Ingredient.create(name: cocktail["strIngredient1"])
end

# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")

# repos.each do |post|

#   repo = JSON.parse(response)
#   post = Post.new(
#     title: repo["title"],
#     url: repo["url"]
#   )
#   post.save!
# end
