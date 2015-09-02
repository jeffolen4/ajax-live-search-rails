# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
users = [
  { first_name: "Jeff", last_name: "Olen", email: nil },
  { first_name: "Jerry", last_name: "Olen", email: nil },
  { first_name: "Colby", last_name: "Olen", email: nil },
  { first_name: "Janice", last_name: "Olen", email: nil },
  { first_name: "Marlin", last_name: "Olen", email: nil },
  { first_name: "Brooke", last_name: "Morris", email: nil },
  { first_name: "Clyde", last_name: "VanBlarcum", email: nil },
  { first_name: "Scott", last_name: "Thomas", email: nil },
  { first_name: "Lazarus", last_name: "Long", email: nil },
]

users.each do |user|
  u = User.new(user)
  u.save
end
