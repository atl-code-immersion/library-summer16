# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Book.destroy_all
Author.destroy_all

5.times do
	author = Author.create(
		name: Faker::Name.name,
		email: Faker::Internet.email
		)

	3.times do
		author.books.create(
			title: Faker::Book.title,
			summary: Faker::Lorem.paragraphs
			)
	end
end