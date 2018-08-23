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
user_5 = User.create(first_name: 'Bob', last_name: 'Marlow', email: "bob@gmail.com", password: "123123")
user_6 = User.create(first_name: 'Harry', last_name: 'Potter', email: "harry@gmail.com", password: "321321")
user_7 = User.create(first_name: 'Micheal', last_name: 'Scott', email: "mike@gmail.com", password: "432432")
user_8 = User.create(first_name: 'Sally', last_name: 'Holland', email: "sally@gmail.com", password: "345345")
user_9 = User.create(first_name: 'Jim', last_name: 'Henderson', email: "jim@gmail.com", password: "567567")

# puts "#{user.errors.messages}"


# garden_1 = Garden.create(title: 'Walled Garden', address: '100 Acomb Road', photo: "../app/assets/images/walled.jpg")
# garden_2 = Garden.create(title: 'Pool Garden' , address: '28 Elvendon Road', photo: "../app/assets/images/pool.jpg")
# garden_3 = Garden.create(title: 'Maze Garden',address: '23 Birnam Road', photo: "../app/assets/images/maze.jpg")
# garden_4 =  Garden.create(title: 'Historic woodland', address: '366 Kennington Road', photo: "../app/assets/images/woodland.jpg")

# garden_1.user = user_1
# garden_1.save

# garden_2.user = user_2
# garden_2.save

# garden_3.user = user_3
# garden_3.save

# garden_4.user = user_4
# garden_4.save

url = 'https://res.cloudinary.com/olimarrio/image/upload/v1535034297/walled.jpg'
garden_1 = Garden.create(title: 'Walled Garden', address: '100 Acomb Road')
garden_1.user = user_1
garden_1.remote_photo_url = url
garden_1.save

url = 'https://res.cloudinary.com/olimarrio/image/upload/v1535034297/pool.jpg'
garden_2 = Garden.create(title: 'Pool Garden' , address: '28 Elvendon Road')
garden_2.user = user_2
garden_2.remote_photo_url = url
garden_2.save

url = 'https://res.cloudinary.com/olimarrio/image/upload/v1535034296/maze.jpg'
garden_3 = Garden.create(title:'Maze Garden',address: '23 Birnam Road')
garden_3.user = user_3
garden_3.remote_photo_url = url
garden_3.save

url = 'https://res.cloudinary.com/olimarrio/image/upload/v1535034296/woodland.jpg'
garden_4 = Garden.create(title: 'Historic woodland', address: '366 Kennington Road')
garden_4.user = user_4
garden_4.remote_photo_url = url
garden_4.save

url = 'https://res.cloudinary.com/olimarrio/image/upload/v1535035898/zen.jpg'
garden_5 = Garden.create(title: 'Zen Garden', address: '9 Albert Square')
garden_5.user = user_5
garden_5.remote_photo_url = url
garden_5.save


url = 'https://res.cloudinary.com/olimarrio/image/upload/v1535035897/butterfly.jpg'
garden_6 = Garden.create(title: 'Butterfly Garden', address: '1 Hollybush Road')
garden_6.user = user_6
garden_6.remote_photo_url = url
garden_6.save

url = 'https://res.cloudinary.com/olimarrio/image/upload/v1535035898/water.jpg'
garden_7 = Garden.create(title: 'Water Garden', address: '12 Falmouth Gardens')
garden_7.user = user_7
garden_7.remote_photo_url = url
garden_7.save

url = 'https://res.cloudinary.com/olimarrio/image/upload/v1535035897/field.jpg'
garden_8 = Garden.create(title: 'Country Field', address: '67 Winchester Street')
garden_8.user = user_8
garden_8.remote_photo_url = url
garden_8.save

url = 'https://res.cloudinary.com/olimarrio/image/upload/v1535035897/flower.jpg'
garden_9 = Garden.create(title: 'Flower Garden', address: '90 Love Lane')
garden_9.user = user_9
garden_9.remote_photo_url = url
garden_9.save







# puts "#{garden.errors.messages}"

puts "Created #{Garden.count} gardens and #{User.count} users."


