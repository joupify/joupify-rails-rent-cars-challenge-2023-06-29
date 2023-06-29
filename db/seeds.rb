# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# db/seeds.rb
puts 'starting'
Car.create(brand: 'Toyota', year_of_production: 2020, address: '123 St cloud Paris ', price_per_day: 50)
Car.create(brand: 'Honda', year_of_production: 2018, address: '456 rue nollet paris', price_per_day: 60)
puts 'ending'
