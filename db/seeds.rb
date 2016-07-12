# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Event.destroy_all
10.times do
  event = Envent.new(
    title: Faker::Hipster.sentence(3),
    time_start: Faker::Time.forward(23, :morning),
    time_end: time_start + 2,
    capacity: Faker::Number.between(1, 100),
    picture: Faker::Avatar.image,
    description: Faker::Lorem.paragraph(2),
    location_title: Faker::Space.planet,
    address_number: Faker::Address.building_number,
    address_street: Faker::Address.street_name,
    address_postcode: Faker::Address.postcode,
    address_city: Faker::Address.city,
    address_contry: Faker::Address.country,
    distinguishing_feature: Faker::StarWars.vehicle,
    wedding_list: Faker::Beer.name,
    category: ["opera", "food", "fishing"].sample,
    keywords: Faker::Superhero.name,
    price: Faker::Number.between(1, 100),
    user: Faker::Name.first_name
    )
  event.save
end

