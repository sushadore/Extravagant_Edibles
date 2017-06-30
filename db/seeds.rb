# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.destroy_all
Review.destroy_all


50.times do |index|
  product = Product.create!(name: Faker::Food.spice + " " + Faker::Dessert.variety, cost: Faker::Number.decimal(2), country_of_origin: Faker::HitchhikersGuideToTheGalaxy.planet)
    5.times do |index|
      product.reviews.create(author: Faker::LeagueOfLegends.location, content_body: Faker::Hipster.paragraph, rating: Faker::Number.between(1,5))
    end
end

p "created #{Review.count} products"
