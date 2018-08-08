# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning detabase..."
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number: "03 9850 2675",
    category:     "chinese"
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number: "03 9899 5579",
    category:     "italian"
  },
  {
    name:         'Great Curry',
    address:      '101A High St, Melbourne, VIC 3000',
    phone_number: "03 9898 1049",
    category:     "french"
  },
  {
    name:         'Okami',
    address:      '4B Shoreditch High St, Adelaide',
    phone_number: "03 9879 4997",
    category:     "japanese"
  },
  {
    name:         'Aaaji',
    address:      '1012 Plenty St, Sydney',
    phone_number: "02 9879 4767",
    category:     "japanese"
  }

]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'

