# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

paris = City.create!(name: 'Paris', longtitude: 48.856614, latitude: 2.3522219)
london = City.create!(name: 'London', longtitude: 0.127551, latitude: 51.5072)
reykjavik = City.create!(name: 'Reykjavik', longtitude: -21.817439, latitude: 64.126521)
rome = City.create!(name: 'Rome', longtitude: 12.496366, latitude: 41.902784)
copenhagen = City.create!(name: 'Copenhagen', longtitude: 12.568337, latitude: 55.676098)
