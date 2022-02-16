# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"

Flat.destroy_all

5.times do
  Flat.create!(
    name: Faker::Movies::LordOfTheRings.character,
    address: Faker::Movies::LordOfTheRings.location,
    description: Faker::Quote.famous_last_words,
    price_per_night: (rand(20..200)),
    number_of_guests: rand(0..20)
  )
end
