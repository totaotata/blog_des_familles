# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
User.destroy_all
Article.destroy_all
Category.destroy_all
5.times do
  category = Category.create!(name: Faker::ProgrammingLanguage.name)
end
10.times do
  user = User.create!(first_name: Faker::Company.name, last_name: Faker::Company.name, email: Faker::Internet.email)
end

10.times do
  # @random = Random.new
  # @random = @random.rand(10)
  article = Article.create!(title: Faker::Pokemon.name, content: Faker::ChuckNorris.fact, user_id: User.first.id, category_id: Category.last.id)
end
