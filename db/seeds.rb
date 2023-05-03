User.create!(name: "hardik",
            email: "hardik@example.com",
            password: "147852", 
            password_confirmation: "147852", 
            admin: true)

# Generate a bunch of additional users.
30.times do |n|
    name = Faker::Name.name
    email = "example-#{n+1}@railstutorial.org"
    password = "password"
    User.create!(name: name,
                email: email,
                password: password,
                password_confirmation: password)
    
end