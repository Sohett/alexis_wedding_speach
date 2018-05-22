# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

alexis_sexy_stock = Stock.new(name: 'alexis_sexy_stock', price: 0)
alexis_sexy_stock.save

puts 'alexis_sexy_stock created'
