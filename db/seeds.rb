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
ship_4 = Ship.create(name:"Militaire", description:"grand navire de guerre militaire", category:"militaire", location: "Montreux", price: 50000000000.5)
puts "Created ship "
ship_5 = Ship.create(name:"yacht", description:"grand yacht de luxe", category:"yacht", location: "saint-maurice", price: 5494298350.5)
puts "Created ship "
ship_6 = Ship.create(name:"pétrolier", description:"Petrolier d'essence", category:"pétrolier", location: "Valencia", price: 7023890489357.5)
puts "Created ship "
ship_7 = Ship.create(name:"Voilier", description:"Voilier à moteur et coque en bois de bambou", category:"voilier", location: "Caraibes", price: 702389.5)
puts "Created ship "
ship_8 = Ship.create(name:"Voilier à rames", description:"Voilier à rames", category:"voilier", location: "Caraibes", price: 70289357.5)
puts "Created ship "


puts 'Finished!'
