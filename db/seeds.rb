User.create!(
        email: "test3@test.com",
        password: "abcd12345",
        password_confirmation: "abcd12345",
        name: "Admin User",
        roles: "site_admin"
    )
puts "1 Admin User Created"

User.create!(
        email: "test2@test.com",
        password: "abcd12345",
        password_confirmation: "abcd12345",
        name: "John Doe",
    )
puts "1 User Created"


3.times do |topic|
    Topic.create!(
        title: "Topic #{topic}"
        )
end
puts "3 Topics created!"

10.times do |blog|
   Blog.create!(
       title: "My Blog Post #{blog}",
       body: "AYY LMAO THIS IS KEEMSTAR", topic_id:Topic.last.id
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

8.times do |portfolio_item|
   Portfolio.create!(
       title: "Portfolio Titile #{portfolio_item}",
       subtitle:"My great service" , 
       body: "The internet is a strange place",
       main_image:"http://placehold.it/400x200",
       thumb_image: "http://placehold.it/300x500"
       )
   end
       1.times do |portfolio_item|
   Portfolio.create!(
       title: "Portfolio Titile #{portfolio_item}",
       subtitle:"Programming" , 
       body: "The internet is a strange place",
       main_image:"http://placehold.it/400x200",
       thumb_image: "http://placehold.it/300x500"
       )
end
 puts "9 Portfolio items created!"

3.times do |technology|
    Portfolio.last.technologies.create!(
        name: "Technology #{technology}"
        
        
        )
    end
    puts "3 technology items created"