require 'rest-client'
require 'json'

puts "destroying all existing objects"
Cocktail.destroy_all
Dose.destroy_all
Ingredient.destroy_all

puts "creating 100 Ingredients"

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
response = RestClient.get(url)
json = JSON.parse(response)
json["drinks"].each do |d|
  Ingredient.create!(name: d["strIngredient1"])
end
puts "100 ingredients was created"
