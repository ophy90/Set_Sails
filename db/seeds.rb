# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Ship.destroy_all

puts 'Creating Ships...'
ship_1 = Ship.create(name:"titanic", description:"grand navire", category:"paquebot", location: "new York", price: 50000.5)
puts "Created ship "
ship_2 = Ship.create(name:"Radeau", description:"grand radeau", category:"bateau", location: "genève", price: 50.5)
puts "Created ship "
ship_3 = Ship.create(name:"barque", description:"grande barque", category:"bateau", location: "Lausanne", price: 70.5)
puts "Created ship "

puts 'Finished!'