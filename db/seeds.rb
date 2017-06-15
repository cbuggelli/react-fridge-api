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
chicken = Food.create(name: "Chicken", days_until_expiration: 2, category_id: 1, quantity: "1")
carrot = Food.create(name: "Carrot", days_until_expiration: 2, quantity: "1", category_id: 2)
beef = Food.create(name: "Beef", days_until_expiration: 5, category_id: 1, quantity: "2")
celery = Food.create(name: "Celery", days_until_expiration: 1, category_id: 2, quantity: "5")
milk = Food.create(name: "Milk", days_until_expiration: 7, category_id: 3, quantity: "1")
bread = Food.create(name: "Bread", days_until_expiration: 10, category_id: 4, quantity: "1")
puts "seeding foods complete"
