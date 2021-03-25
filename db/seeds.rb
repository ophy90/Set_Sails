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
ship_1 = Ship.create(name:"Motor Yacht KHALILAH", description:"Motor Yacht KHALILAH for Charter with SuperYachtsMonaco
49m SuperSport KHALILAH is the largest private yacht built entirely in carbon composite – and now she’s available for charter. Delivered in 2015 by Palmer Johnson, her dynamic design combines performance and space to offer seriously smooth cruising. A unique fast displacement yacht, KHALILAH is cool, fiercely stylish, and the golden girl of the charter scene.", category:"paquebot", location: "New York", price: 500)
ship_1.photo.attach(io: file, filename: 'ship.1.jpg', content_type: 'image/jpg')
puts "Created ship "
file = URI.open('https://res.cloudinary.com/dfdp6jywx/image/upload/v1616489895/Yacht_2_pozzol.jpg')
ship_2 = Ship.create(name:"Yacht Luxus", description:"Beau", category:"Yacht", location: "Geneva", price: 10000)
ship_2.photo.attach(io: file, filename: 'ship.2.jpg', content_type: 'image/jpg')
puts "Created ship "
file = URI.open('https://res.cloudinary.com/dfdp6jywx/image/upload/v1616489895/Yacht_3_qkezwl.jpg')
ship_3 = Ship.create(name:"Yacht Luxus", description:"Beau", category:"Yacht", location: "Geneva", price: 75000)
ship_3.photo.attach(io: file, filename: 'ship.3.jpg', content_type: 'image/jpg')
puts "Created ship "
file = URI.open('https://res.cloudinary.com/dfdp6jywx/image/upload/v1616595448/barque_k45kv8.jpg')
ship_4 = Ship.create(name:"Small boat", description:"Small boat", category:"Small Boat", location: "Krabi", price: 100)
ship_4.photo.attach(io: file, filename: 'ship.4.jpg', content_type: 'image/jpg')
puts "Created ship "
file = URI.open('https://res.cloudinary.com/dfdp6jywx/image/upload/v1616583350/1000x-1_rn3l3w.jpg')
ship_5 = Ship.create(name:"Oil Tanker", description:"Nice and spacious platform.", category:"Oil Tanker", location: "Los Angeles", price: 100000)
ship_5.photo.attach(io: file, filename: 'ship.5.jpg', content_type: 'image/jpg')
puts "Created ship "
file = URI.open('https://res.cloudinary.com/dfdp6jywx/image/upload/v1616489895/Yacht_3_qkezwl.jpg')
ship_6 = Ship.create(name:"Yacht Magnificus", description:"A yacht is a craft used for pleasure and sport. ", category:"Yacht", location: "Geneva", price: 10000)
ship_6.photo.attach(io: file, filename: 'ship.6.jpg', content_type: 'image/jpg')
puts "Created ship "
file = URI.open('https://res.cloudinary.com/dfdp6jywx/image/upload/v1616595882/rms_titanic_wbvp5j.jpg')
ship_7 = Ship.create(name:"Titanic", description:"A yacht is a craft used for pleasure and sport. ", category:"Cruise", location: "Dubai", price: 200000)
ship_7.photo.attach(io: file, filename: 'ship.7.jpg', content_type: 'image/jpg')
puts "Created ship "
file = URI.open('https://res.cloudinary.com/dfdp6jywx/image/upload/v1616598109/ship_2_rjwji6.jpg')
ship_8 = Ship.create(name:"Yacht", description:"A yacht is a craft used for pleasure and sport. ", category:"Yacht", location: "Sydney", price: 10000)
ship_8.photo.attach(io: file, filename: 'ship.7.jpg', content_type: 'image/jpg')
puts "Created ship "


puts 'Finished!'
