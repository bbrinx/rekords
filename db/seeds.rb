# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Profile.create!(
  username: Faker::Internet.user_name, 
  email: Faker::Internet.user_name + "@#{Faker::Internet.domain_name}",
  password: Faker::Internet.password
)
test_user = Profile.create!(
  username: "testi", 
  email: "test@test.de",
  password: "testtest"
)
category_sport = Category.create!(
  name: "Sport"
)
category_eating = Category.create!(
  name: "Eating"
)
category_drinking = Category.create!(
  name: "Drinking"
)
category_knowledge = Category.create!(
  name: "Knowledge"
)
category_other = Category.create!(
  name: "Other"
)

categories = [category_sport, category_eating, category_knowledge, category_other]

100.times do |i|
  Record.create!(
    name: Faker::SiliconValley.invention,
    description: Faker::SiliconValley.quote,
    date: Faker::Date.backward,
    profile: test_user,
    category: categories.sample,
  )
end


  