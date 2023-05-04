User.create!(name: "hardik",
            email: "hardik@example.com",
            password: "147852", 
            password_confirmation: "147852", 
            admin: true,
            activated: true,
            activated_at: Time.zone.now)

# Generate a bunch of additional users.
30.times do |n|
    name = Faker::Name.name
    email = "example-#{n+1}@railstutorial.org"
    password = "password"
    User.create!(name: name,
                email: email,
                password: password,
                password_confirmation: password,
                activated: true,
                activated_at: Time.zone.now)
    
end 

# Generate microposts for a subset of users.
users = User.order(:created_at).take(6)
10.times do
    content = Faker::Lorem.sentence(word_count: 5)
    users.each { |user| user.microposts.create!(content: content) }
end