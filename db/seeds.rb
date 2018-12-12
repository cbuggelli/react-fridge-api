# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.delete_all
puts "seeding categories"
meat = Category.create(name: "meat") # 1
produce = Category.create(name: "produce") #2
dairy = Category.create(name: "dairy") #3
baked = Category.create(name: "baked") #4
freezer = Category.create(name: "freezer") #5
beverage = Category.create(name: "beverage") #6
other = Category.create(name: "other") #7
puts "seeding categories complete"

puts "seeding foods"
chicken = Food.create(name: "Chicken", expiration_date: "2017-07-08", category_id: 1, quantity: "1")
carrot = Food.create(name: "Carrot", expiration_date: "2017-07-06", quantity: 1, category_id: 2)
beef = Food.create(name: "Beef", expiration_date: "2017-07-05", category_id: 1, quantity: "2")
celery = Food.create(name: "Celery", expiration_date: "2017-07-05", category_id: 2, quantity: "5")
milk = Food.create(name: "Milk", expiration_date: "2017-07-05", category_id: 3, quantity: "1")
bread = Food.create(name: "Bread", expiration_date: "2017-07-05", category_id: 4, quantity: "1")
# jonnySpecial = Food.create(name: "Human Meat", expiration_date: "2017-07-010", category_id: 1, quantity: "4")
beer = Food.create(name: "Beer", expiration_date: "2017-010-05", category_id: 6, quantity: "12")
# hgh = Food.create(name: "HGH", expiration_date: "2019-11-05", category_id: 7, quantity: "10")
catMedicine = Food.create(name: "Cat Medicine", expiration_date: "2017-07-05", category_id: 7, quantity: "12")
fishNugs = Food.create(name: "Fish Nuggets", expiration_date: "2018-07-05", category_id: 5, quantity: "2")
cream = Food.create(name: "Creamsicles", expiration_date: "2020-07-05", category_id: 5, quantity: "2")
# bug = Food.create(name: "Dead Roach", expiration_date: "2057-07-05", category_id: 1, quantity: "1")
# dog = Food.create(name: "Hot Dog Oils", expiration_date: "2017-07-05", category_id: 6, quantity: "10")
# eggplant = Food.create(name: "Seductively Shaped Eggplant", expiration_date: "2017-07-05", category_id: 2, quantity: "2")
spmilk = Food.create(name: "Milk?", expiration_date: "2017-07-05", category_id: 3, quantity: "2")
# brownies = Food.create(name: "Jamies Special Browies", expiration_date: "2017-07-05", category_id: 4, quantity: "6")
# jager = Food.create(name: "Jager Bombs", expiration_date: "2019-02-05", category_id: 6, quantity: "100")
# zuccini = Food.create(name: "Soiled Zuccini", expiration_date: "2017-08-05", category_id: 4, quantity: "1")

puts "seeding foods complete"
