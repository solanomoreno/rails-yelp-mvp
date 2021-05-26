# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
camelos = { name: "Camelos", address: "Jardins", category: "italian" }
pizzahut =  { name: "Pizza Hut", address: "Moema", category: "italian" }
milenovencetos =  { name: "1900", address: "Vila Madalena", category: "italian" }
bras =  { name: "Bras", address: "Bexiga", category: "italian" }

[ camelos, pizzahut, milenovencetos, bras ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"