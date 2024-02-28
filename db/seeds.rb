# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', category: 'french' }
pizza_east = { name: 'Pizza East', address: '56A Shoreditch High St, London E1 6PQ', category: 'chinese' }
pizza_west = { name: 'Pizza West', address: '57A Shoreditch High St, Chelsea E1 6PQ', category: 'italian' }
kfc = { name: 'KFC', address: '57A Shoreditch High St, Manchester E1 6PQ', category: 'belgian' }
dominos = { name: 'Dominos', address: '57A Shoreditch High St, Mauritius E1 6PQ', category: 'french' }

[dishoom, pizza_east, pizza_west, kfc, dominos].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
