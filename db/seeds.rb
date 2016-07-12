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

User.destroy_all

users_attributes = [
{
  email: "aline@gmail.com", password: "0123456789", created_at: nil, updated_at: nil, first_name: "Aline", last_name: "Soville", picture: nil, description: "Loves cooking, reading and watching leaves falling from trees", address: "25 rue du Petit Chat, 75014 Paris", phone_number: "0785964556"
  },
{
  email: "leo.Maguet@hotmail.com", password: "aaaaaaaaa", created_at: nil, updated_at: nil, first_name: "Leo", last_name: "Maguet", picture: nil, description: "I travel a lot for work and would love to meet friends in places I hang out", address: "Place de la Gare, 75016 Paris", phone_number: "0745869866"
  },
{
  email: "thebestcookie@gmail.com", password: "0123456789", created_at: nil, updated_at: nil, first_name: "John", last_name: "Ravault", picture: nil, description: "Philosopher and chips lover", address: "---", phone_number: "0788656975"
  }
]

users_attributes.each { |params| User.create!(params) }
