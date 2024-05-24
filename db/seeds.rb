# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Restaurant.destroy_all

macdonald = { name: 'Macdonald', category: 'chinese', address: 'raffles place' }
kfc = { name: 'KFC', category: 'italian', address: 'dhoby ghaut' }
arnolds = { name: "Arnold's", category: 'japanese', address: 'city hall' }
pizza_hut = { name: 'Pizza Hut', category: 'french', address: 'kovan' }
burger_king = { name: 'Burger King', category: 'belgian', address: 'jurong east' }

[macdonald, kfc, arnolds, pizza_hut, burger_king].each do |attributes|
  restaurant = Restaurant.create!(attributes)
end
