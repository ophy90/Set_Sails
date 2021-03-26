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
ship_1 = Ship.create(name:"Golden KHALILAH", description:"Motor Yacht KHALILAH for Charter with SuperYachtsMonaco
49m SuperSport KHALILAH is the largest private yacht built entirely in carbon composite – and now she’s available for charter. Delivered in 2015 by Palmer Johnson, her dynamic design combines performance and space to offer seriously smooth cruising. A unique fast displacement yacht, KHALILAH is cool, fiercely stylish, and the golden girl of the charter scene.", category:"Yacht", location: "Miami Harbour", price: 50000)
ship_1.photo.attach(io: file, filename: 'ship.1.jpg', content_type: 'image/jpg')
puts "Created ship "
file = URI.open('https://res.cloudinary.com/dfdp6jywx/image/upload/v1616489895/Yacht_2_pozzol.jpg')
ship_2 = Ship.create(name:"Kingdom SKR", description:"Kingdom 5KR (originally named Nabila) is an 85.65-metre (281 ft) superyacht built for Saudi billionaire Adnan Khashoggi that is now owned by Saudi business magnate Al-Waleed bin Talal.", category:"Yacht", location: "Port Antibes", price: 10000)
ship_2.photo.attach(io: file, filename: 'ship.2.jpg', content_type: 'image/jpg')
puts "Created ship "
file = URI.open('https://res.cloudinary.com/dfdp6jywx/image/upload/v1616489895/Yacht_3_qkezwl.jpg')
ship_3 = Ship.create(name:"Yacht Luxus", description:"Beau", category:"Yacht", location: "Geneva", price: 75000)
ship_3.photo.attach(io: file, filename: 'ship.3.jpg', content_type: 'image/jpg')
puts "Created ship "
file = URI.open('https://res.cloudinary.com/dfdp6jywx/image/upload/v1616595448/barque_k45kv8.jpg')
ship_4 = Ship.create(name:"La Barque Insubmersible", description:"Small boat", category:"Small Boat", location: "Krabi", price: 100)
ship_4.photo.attach(io: file, filename: 'ship.4.jpg', content_type: 'image/jpg')
puts "Created ship "
file = URI.open('https://res.cloudinary.com/dfdp6jywx/image/upload/v1616583350/1000x-1_rn3l3w.jpg')
ship_5 = Ship.create(name:"USS Doris Miller", description:"USS Doris Miller (CVN-81) is a Ford-class aircraft carrier of the United States Navy", category:"Aircraft Carrier", location: "Suez Canal", price: 100000)
ship_5.photo.attach(io: file, filename: 'ship.5.jpg', content_type: 'image/jpg')
puts "Created ship "
file = URI.open('https://res.cloudinary.com/dfdp6jywx/image/upload/v1616595881/red_october_agjohn.jpg')
ship_6 = Ship.create(name:"Red October II", description:"Red October (Russian: Красный Oктябрь, Russian pronunciation: [ˈkrasnɨj ɐkˈtʲabrʲ], Krasniy Oktyabr) is a modified Typhoon class nuclear-powered ballistic missile submarine currently in service with the Russian Navy", category:"Submarine", location: "Dikson", price: 10000)
ship_6.photo.attach(io: file, filename: 'ship.6.jpg', content_type: 'image/jpg')
puts "Created ship "
file = URI.open('https://res.cloudinary.com/dfdp6jywx/image/upload/v1616595882/rms_titanic_wbvp5j.jpg')
ship_7 = Ship.create(name:"Titanic", description:"RMS Titanic was a British passenger liner operated by the White Star Line that sank in the North Atlantic Ocean on 15 April 1912, after striking an iceberg during her maiden voyage from Southampton to New York City. Of the estimated 2,224 passengers and crew aboard, more than 1,500 died, making the sinking at the time one of the deadliest of a single ship and the deadliest peacetime sinking of a superliner or cruise ship to date. ", category:"Cruise", location: "Northern atlantic ocean", price: 200000)
ship_7.photo.attach(io: file, filename: 'ship.7.jpg', content_type: 'image/jpg')
puts "Created ship "
file = URI.open('https://res.cloudinary.com/dfdp6jywx/image/upload/v1616598109/ship_2_rjwji6.jpg')
ship_8 = Ship.create(name:"Amaryllis", description:"A yacht is a craft used for pleasure and sport. ", category:"Yacht", location: "Sydney", price: 10000)
ship_8.photo.attach(io: file, filename: 'ship.7.jpg', content_type: 'image/jpg')
puts "Created ship "


puts 'Finished!'
