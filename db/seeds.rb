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

puts "creating 6 cocktails"
Cocktail.create!(name: 'Negroni', remote_photo_url: 'https://www.thedrinkblog.com/wp-content/uploads/2015/11/tdb-negroni-1500x1000-3-1.jpg')
Cocktail.create!(name: 'Grog', remote_photo_url: 'https://images.unsplash.com/photo-1514362545857-3bc16c4c7d1b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80')
Cocktail.create!(name: 'Gin&Tonic', remote_photo_url: 'https://images.unsplash.com/photo-1504675099198-7023dd85f5a3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80')
Cocktail.create!(name: 'Bellini', remote_photo_url: 'https://images.unsplash.com/photo-1562001434-4697c7ad23ca?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1489&q=80')
Cocktail.create!(name: 'Horchata', remote_photo_url: 'https://www.thedrinkblog.com/wp-content/uploads/2018/06/tdb-horchata-1500x1000.jpg')
Cocktail.create!(name: 'Apricot whisky sour', remote_photo_url: 'https://www.thedrinkblog.com/wp-content/uploads/2018/06/tdb-apricot-whisky-1500x1000.jpg')
puts "done"
