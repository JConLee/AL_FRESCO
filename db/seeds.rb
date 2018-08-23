# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroying all the users and gardens..."

Garden.destroy_all
User.destroy_all

puts "Creating users and gardens"

user_1 = User.create(first_name: 'Jess', last_name: 'Lee', email: "jess@gmail.com", password: "123456")
user_2 = User.create(first_name: 'Ben',last_name: 'Herring', email: "ben@gmail.com", password: "789110")
user_3 = User.create(first_name: 'Luiza' ,last_name: 'Pinto', email: "luiza@gmail.com", password: "119567")
user_4 = User.create(first_name: 'Oli', last_name: 'Marriott', email: "oli@gmail.com", password: "341567")

# puts "#{user.errors.messages}"


garden_1 = Garden.create(title: 'Walled Garden', address: 'Devon', latitude: 0, longitude: 0, photo: "../app/assets/images/garden.jpg")
garden_2 = Garden.create(title: 'Pool Garden' , address: 'Portugal', latitude:0, longitude:0, photo: "../app/assets/images/garden.jpg")
garden_3 = Garden.create(title: 'Maze Garden',address: 'East Sussex', latitude:0, longitude:0, photo: "../app/assets/images/garden.jpg")
garden_4 =  Garden.create(title: 'Historic woodland', address: 'Hampshire', latitude:0, longitude:0, photo: "../app/assets/images/garden.jpg")

garden_1.user = user_1
garden_1.save

garden_2.user = user_2
garden_2.save

garden_3.user = user_3
garden_3.save

garden_4.user = user_4
garden_4.save




# puts "#{garden.errors.messages}"

puts "Created #{Garden.count} gardens and #{User.count} users."


