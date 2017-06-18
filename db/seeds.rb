# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.delete_all
puts "seeding categories"
meat = Category.create(name: "meat")
produce = Category.create(name: "produce")
dairy = Category.create(name: "dairy")
baked = Category.create(name: "baked")
puts "seeding categories complete"

puts "seeding foods"
chicken = Food.create(name: "Chicken", expiration_date: "2017-07-08", category_id: 1, quantity: "1")
carrot = Food.create(name: "Carrot", expiration_date: "2017-07-06", quantity: "1", category_id: 2)
beef = Food.create(name: "Beef", expiration_date: "2017-07-05", category_id: 1, quantity: "2")
celery = Food.create(name: "Celery", expiration_date: "2017-07-05", category_id: 2, quantity: "5")
milk = Food.create(name: "Milk", expiration_date: "2017-07-05", category_id: 3, quantity: "1")
bread = Food.create(name: "Bread", expiration_date: "2017-07-05", category_id: 4, quantity: "1")
puts "seeding foods complete"
