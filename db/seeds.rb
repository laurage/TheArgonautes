# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all

users_attributes = [
{
  email: "aline@gmail.com", created_at: nil, updated_at: nil, first_name: "Aline", last_name: "Soville", picture: nil, description: "Loves cooking, reading and watching leaves falling from trees", address: "25 rue du Petit Chat, 75014 Paris", phone_number: "0785964556"
  }
{
  email: "leo.Maguet@hotmail.com", created_at: nil, updated_at: nil, first_name: "Leo", last_name: "Maguet", picture: nil, description: "I travel a lot for work and would love to meet friends in places I hang out", address: "Place de la Gare, 75016 Paris", phone_number: "0745869866"
  }
{
  email: "thebestcookie@gmail.com", created_at: nil, updated_at: nil, first_name: "John", last_name: "Ravault", picture: nil, description: "Philosopher and chips lover", address: "---", phone_number: "0788656975"
  }
]

users_attributes.each { |params| User.create!(params) }
