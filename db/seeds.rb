# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'faker'
20.times do
	User.create([{
		firstname: Faker::Name.first_name,
		lastname: Faker::Name.last_name,
		username: Faker::Name.unique.name,
		email: Faker::Internet.email
		}])
end

#User.all.map(&:destroy)