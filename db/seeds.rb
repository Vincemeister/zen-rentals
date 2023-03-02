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
Booking.destroy_all
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
vincent = User.new(
  first_name: "Vincent",
  last_name: "Bouvier",
  email: "vr@gmail.com",
  password: "password"
)
vincent.save!


puts "Creating rentals..."


############################## FIRST ##########################################

rental = Rental.new(
  title: "MetroNaps EnergyPod",
  description: "The EnergyPod combines luxurious comfort, innovative technology
   and timeless design.

   Ergonomic Perfection
The countour of the EnergyPod takes pressure off the cardiac system with the elevation of the feet and relaxes the
muscles of the lower back with a slight bend in the knees.
Privacy Visor
The EnergyPod’s sphere provides semi-privacy without overly enclosing. Rotate the privacy visor for additional seclusion.

Interface Console
Set the timer to the desired duration, or use the one-touch start button for a perfect pre-programmed 20 minute power
nap.

Timed Waking
Gentle but effective waking as a programmed combination of lights, music and vibration is executed.

Built-In Speaker
Specially composed rhythms play to facilitate relaxation and eliminate surrounding distractions. Listen through the
built-in speaker or use optional headphones
",
  address: "Canggu",
  price_per_day:  30,
  rating: 4.7,
  user: User.all.sample,
  headline: "Luxurious comfort, innovative technology and timeless design."
)

file = URI.open("https://res.cloudinary.com/dncij7vr6/image/upload/v1677653400/rentals/energypod_65247_1_jpxj1i.jpg")
  rental.photos.attach(io: file, filename: "#{rental.title}.jpg", content_type: "image/jpg")
  rental.save!


file = URI.open("https://res.cloudinary.com/dncij7vr6/image/upload/v1677654207/rentals/C0tdspSUAAAarrk_gyktgw.jpg")
  rental.photos.attach(io: file, filename: "#{rental.title}.jpg", content_type: "image/jpg")
  rental.save!


  file = URI.open("https://res.cloudinary.com/dncij7vr6/image/upload/v1677654205/rentals/napping-at-work-pod-1_duiqvn.jpg")
  rental.photos.attach(io: file, filename: "#{rental.title}.jpg", content_type: "image/jpg")
  rental.save!


  file = URI.open("https://res.cloudinary.com/dncij7vr6/image/upload/v1677654203/rentals/energypod-2022-3_xpi1gm.png")
  rental.photos.attach(io: file, filename: "#{rental.title}.jpg", content_type: "image/jpg")
  rental.save!

  file = URI.open("https://res.cloudinary.com/dncij7vr6/image/upload/v1677654208/rentals/image4_zyducz.jpg")
  rental.photos.attach(io: file, filename: "#{rental.title}.jpg", content_type: "image/jpg")
  rental.save!

############################## SECOND ##########################################

  cryochamber = Rental.new(
    title: "SuperFroid Cryo Master 3.0",
    description: "By exposing the whole body to extreme temperature (-230F) for a short time (maximum 3 min), Full Submersion Cryotherapy creates a thermal shock without causing a drop in body temperature. This thermal shock has several effects on the body: analgesic (reduction of pain), anti-inflammatory and stimulant.

    Full Body Submersion (including the head) is the key for optimal Cryotherapy experience. Our new generation Cryochamber does not use harmful Nitrogen vapors, only fresh natural air Improve post-workout recovery and tissue circulation, increase metabolic rate and level of antioxidants. Release endorphins and dopamine and start feeling good, strengthen the immune system, bring down cortisol and balance your nervous system, burn down stubborn fat and increase collagen production
  ",
    address: "Canggu",
    price_per_day:  300,
    rating: 5,
    user: vincent,
    headline: "Capability to (-230F). Full Submersion Cryotherapy creates a thermal shock without causing a drop in body temperature."
  )


  file = URI.open("https://res.cloudinary.com/dncij7vr6/image/upload/v1677657123/rentals/lady-having-cryotherapy_j1lrqr.jpg")
  cryochamber.photos.attach(io: file, filename: "#{cryochamber.title}.jpg", content_type: "image/jpg")
  cryochamber.save!


file = URI.open("https://res.cloudinary.com/dncij7vr6/image/upload/v1677657118/rentals/download_tmo83r.jpg")
  rental.photos.attach(io: file, filename: "#{rental.title}.jpg", content_type: "image/jpg")
  rental.save!


  file = URI.open("https://res.cloudinary.com/dncij7vr6/image/upload/v1677657125/rentals/cryotherapy-2-1024x1024_yv59gi.jpg")
  rental.photos.attach(io: file, filename: "#{rental.title}.jpg", content_type: "image/jpg")
  rental.save!


  file = URI.open("https://res.cloudinary.com/dncij7vr6/image/upload/v1677657123/rentals/download_2_bnenrq.jpg")
  rental.photos.attach(io: file, filename: "#{rental.title}.jpg", content_type: "image/jpg")
  rental.save!

  file = URI.open("https://res.cloudinary.com/dncij7vr6/image/upload/v1677657121/rentals/download_1_b1o0fe.jpg")
  rental.photos.attach(io: file, filename: "#{rental.title}.jpg", content_type: "image/jpg")
  rental.save!




############################## THIRD ##########################################

  rental = Rental.new(
    title: "BotanicaArts Urban Zen Garden",
    description: "A fully-fledged garden with zen pebbles as part of your office. Suitable to wind down, hold meetings and impress partners.
  ",
    address: "New York",
    price_per_day:  30,
    rating: 4.7,
    user: User.all.sample,
    headline: "Fully-fledged ubran garden with zen pebbles."
  )


  file = URI.open("https://res.cloudinary.com/dncij7vr6/image/upload/v1677658156/rentals/indoorgarden_hw39eg.jpg")
  rental.photos.attach(io: file, filename: "#{rental.title}.jpg", content_type: "image/jpg")
  rental.save!



############################## FOURTH ##########################################


  vertical_garden = Rental.new(
    title: "Oxygenifying Vertical Garden",
    description: "Greenify your office with this vertical garden. It will help you to oxygenify your office and improve your productivity.",
    address: "Canggu",
    price_per_day:  30,
    rating: 4.7,
    user: vincent,
    headline: "Nicaraguan Moss oxygenifying vertical garde"
  )


  file = URI.open("https://res.cloudinary.com/dncij7vr6/image/upload/v1677658376/rentals/vertical_garden_f7qh6c.jpg")
  vertical_garden.photos.attach(io: file, filename: "#{vertical_garden.title}.jpg", content_type: "image/jpg")
  vertical_garden.save!




############################## FIFTH ##########################################


  rental = Rental.new(
    title: "Premium Swedish Sauna",
    description: "A premium swedish sauna made from highest quality Seqouia Redwood Timber. Comes with big Turkish man to spank you with birch branches.
  ",
    address: "Canggu",
    price_per_day:  30,
    rating: 4.7,
    user: User.all.sample,
    headline: "Premium rosewood sauna with Diffuse 3.0 techbirch branches added."
  )


  file = URI.open("https://res.cloudinary.com/dncij7vr6/image/upload/v1677658594/rentals/Kylin-Sauna-Blackburn-showroom-image-lowres-1024x635_e0cix7.jpg")
  rental.photos.attach(io: file, filename: "#{rental.title}.jpg", content_type: "image/jpg")
  rental.save!




############################## SIXTH #########################################



  rental = Rental.new(
    title: "Multi-Person Steambath",
    description: "Hold high-stakes meetings in this multi-person steambath. It will help you to relax and improve your productivity
  ",
    address: "New York",
    price_per_day:  30,
    rating: 5,
    user: User.all.sample,
    headline: "Multi-person steambath with 3D sound system."
  )


  file = URI.open("https://res.cloudinary.com/dncij7vr6/image/upload/v1677658710/rentals/7723ba22702997.56316ffedb2af_l8gdbw.jpg")
  rental.photos.attach(io: file, filename: "#{rental.title}.jpg", content_type: "image/jpg")
  rental.save!




############################## SEVENTH ##########################################



  rental = Rental.new(
    title: "The TinyOffice",
    description: "Superman stayed in this tiny office. It will help you to relax and improve your productivity.
  ",
    address: "Canggu",
    price_per_day:  30,
    rating: 4.7,
    user: User.all.sample,
    headline: "Ultraegonomic insulated office pod for all weathers"

  )


  file = URI.open("https://res.cloudinary.com/dncij7vr6/image/upload/v1677658816/rentals/download_3_jodayn.jpg")
  rental.photos.attach(io: file, filename: "#{rental.title}.jpg", content_type: "image/jpg")
  rental.save!



############################## EIGTH ##########################################





  rental = Rental.new(
    title: "Luna Blu Office Waterfall",
    description: "It will help you to relax and improve your productivity.",
    address: "Canggu",
    price_per_day:  30,
    rating: 4.7,
    user: User.all.sample,
    headline: "BluTech waterfall with SOOTH Light tech."
  )


  file = URI.open("https://res.cloudinary.com/dncij7vr6/image/upload/v1677659111/rentals/download_4_i10spb.jpg")
  rental.photos.attach(io: file, filename: "#{rental.title}.jpg", content_type: "image/jpg")
  rental.save!





  ############################## NINTH ##########################################


  rental = Rental.new(
    title: "The UBUDian Jungle Wall",
    description: "Be a boss. Have a vertical garden. Mr. Executive. Yeah.",
    address: "Canggu",
    price_per_day:  30,
    rating: 4.7,
    user: User.all.sample,
    headline: "30 tropical plants with aroma therapy"

  )


  file = URI.open("https://res.cloudinary.com/dncij7vr6/image/upload/v1677729643/Office-interior-vertical-garden_1_trlivq.jpg")
  rental.photos.attach(io: file, filename: "#{rental.title}.jpg", content_type: "image/jpg")
  rental.save!



  ############################## BOOKINGS ##########################################

  puts "creating bookings"

  booking = Booking.new(user: User.all.sample, rental: cryochamber, start_date: Date.today - 10, end_date: Date.today + 1, total_price: 1200, status: "accepted")
  booking.save!

  booking_2 = Booking.new(user: User.all.sample, rental: cryochamber, start_date: Date.today - 5, end_date: Date.today + 7, total_price: 2300, status: "accepted")
  booking.save!

  booking_3 = Booking.new(user: vincent, rental: vertical_garden, start_date: Date.today - 3, end_date: Date.today + 3, total_price: 800, status: "pending")
  booking.save!


  "3 bookings created"
