# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

User.delete_all
Article.delete_all

5.times do |i|
    firstname = Faker::Name.first_name
    User.create!(
        email: "#{firstname}@yopmail.com",
        password: 'password',
        password_confirmation: 'password',
    )
end

30.times do |i|
  Article.create!(
      title: Faker::TvShows::BrooklynNineNine.quote,
      content: Faker::Lorem.paragraph(sentence_count: 2),
  )
end