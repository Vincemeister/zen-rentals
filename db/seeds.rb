# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
require 'faker'

#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Rental.destroy_all
User.destroy_all
puts "Creating users..."

10.times do
  user = User.new(
    first_name:    Faker::Name.first_name,
    last_name:     Faker::Name.last_name,
    email:   Faker::Internet.email,
    password:  "123456"
  )
  user.save!
  puts "User #{user.first_name} created!"
end
puts ' 10 users created!'


puts "Creating rentals..."
10.times do
  rental = Rental.new(
    title:    Faker::Appliance.equipment,
    description:     Faker::Lorem.paragraph,
    address:   Faker::Address.full_address,
    price_per_day:  rand(1..10000),
    rating: rand(1..5),
    user: User.all.sample

  )
  file = URI.open("https://source.unsplash.com/random/?spa,machines")
  rental.photos.attach(io: file, filename: "#{rental.title}.jpg", content_type: "image/jpg")
  rental.save!
  puts "Rental #{rental.title} created!"
end

puts ' 10 rentals created!'
