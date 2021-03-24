# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts 'Cleaning database...'
Ship.destroy_all

puts 'Creating Ships...'
file = URI.open('https://res.cloudinary.com/dfdp6jywx/image/upload/v1616489895/Yacht_1_fyiwop.jpg')
ship_1 = Ship.create(name:"Titanic", description:"Grand navire", category:"paquebot", location: "New York", price: 500)
ship_1.photo.attach(io: file, filename: 'ship.1.jpg', content_type: 'image/jpg')
puts "Created ship "
ship_2 = Ship.create(name:"Radeau", description:"Grand radeau", category:"bateau", location: "Genève", price: 323)
puts "Created ship "
ship_3 = Ship.create(name:"Barque", description:"Grande barque", category:"bateau", location: "Lausanne", price: 70.5)
puts "Created ship "
ship_4 = Ship.create(name:"Militaire", description:"Grand navire de guerre militaire", category:"militaire", location: "Montreux", price: 5000)
puts "Created ship "
ship_5 = Ship.create(name:"Yacht", description:"Grand yacht de luxe", category:"yacht", location: "Saint-maurice", price: 54942)
puts "Created ship "
ship_6 = Ship.create(name:"Pétrolier", description:"Petrolier d'essence", category:"pétrolier", location: "Valencia", price: 70235)
puts "Created ship "
ship_7 = Ship.create(name:"Voilier", description:"Voilier à moteur et coque en bois de bambou", category:"voilier", location: "Caraibes", price: 702389)
puts "Created ship "
ship_8 = Ship.create(name:"Voilier à rames", description:"Voilier à rames", category:"voilier", location: "Caraibes", price: 702039)
puts "Created ship "


puts 'Finished!'
