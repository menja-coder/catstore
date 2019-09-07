# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
20.times do
	item =Item.create(title:Faker::Creature::Cat.name,
		description:Faker::Creature::Cat.registry,
		price:Faker::Number.decimal(l_digits: 3, r_digits: 3),
		image_url: "http://lorempixel.com/640/480/cats"
		)
end


puts"ready"
