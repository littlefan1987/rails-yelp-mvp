require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

category = ["chinese", "italian", "japanese", "french", "belgian"].sample

10.times do
  restaurant = Restaurant.create(name: Faker::Movies::HarryPotter.character, address: Faker::Movies::HarryPotter.location, phone_number: Faker::PhoneNumber.cell_phone, category: category)
  rand(3...8).times do
    Review.create(content: Faker::Movies::HarryPotter.quote, rating: rand(0..5), restaurant: restaurant)
  end
end
