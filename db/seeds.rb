# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |blog|
   Blog.create!(
       title: "My Blog Post #{blog}",
       body: "AYY LMAO THIS IS KEEMSTAR"
       )
end
puts "10 Blog posts being created"

5.times do |skill|
   Skill.create!(
       title: "Rails #{skill}",
       percent: 75
       )
end
puts "5 Skills created"

9.times do |portfolio_item|
   Portfolio.create!(
       title: "Portfolio Titile #{portfolio_item}",
       subtitle:"My great service" , 
       body: "The internet is a strange place",
       main_image:"placehold.it/400x200",
       thumb_image: "placehold.it/300x500"
       )
end
puts "9 Portfolio items created!"
