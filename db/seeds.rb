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
garden_1 = Garden.new(title: 'Walled Garden', address: '100 Acomb Road', price: 100, description: 'Head outside to explore the restored high walls of the one-acre private kitchen garden and discover the espaliered fruit trees (replanted exactly as they were in Victorian times) or head to the covered hot tub (and sauna coming soon). Outside, enjoy BBQs on private terraces, explore the estate on Pashley bicycles or hold your own tournament on the nearby tennis court')
garden_1.user = user_1
garden_1.remote_photo_url = url
garden_1.save

url = 'https://res.cloudinary.com/olimarrio/image/upload/v1535034297/pool.jpg'
garden_2 = Garden.new(title: 'Pool Garden' , address: '28 Elvendon Road', price: 67, description: 'Formerly known at the Uxbridge Lido, this is a rather beautiful spot, in all its 1930s, Grade II-listed glory. The open-air pool is an impressive 50m, with fountains at either end. Theres also a heated splash pool for children. The lido is in excellent shape, having been restored in 2010, and theres plenty of room to sunbathe. While youre at it, take advantage of the poolside food and drink, too.')
garden_2.user = user_2
garden_2.remote_photo_url = url
garden_2.save

url = 'https://res.cloudinary.com/olimarrio/image/upload/v1535034296/maze.jpg'
garden_3 = Garden.new(title:'Maze Garden',address: '23 Birnam Road', price: 45, description: 'The Maze was designed by George London and Henry Wise and is trapezoid in shape. Originally planted using hornbeam, it was later replanted using yew. It is referred to as a multicursal or puzzle maze.

')
garden_3.user = user_3
garden_3.remote_photo_url = url
garden_3.save

url = 'https://res.cloudinary.com/olimarrio/image/upload/v1535034296/woodland.jpg'
garden_4 = Garden.new(title: 'Historic woodland', address: '366 Kennington Road', price: 56, description: 'An attractive beech woodland growing on a flat site with good access in a peaceful location')
garden_4.user = user_4
garden_4.remote_photo_url = url
garden_4.save

url = 'https://res.cloudinary.com/olimarrio/image/upload/v1535035898/zen.jpg'
garden_5 = Garden.new(title: 'Zen Garden', address: '9 Albert Square', price: 98, description: 'Pure Japanese Zen garden (so no flowers) with 12 large and small rocks of various colours and textures set in islands of moss and surrounded by a sea of grey granite gravel raked in a stylised wave pattern. Garden surrounded by trees and bushes outside a cob wall. Oak framed wattle and daub shelter with Norfolk reed thatched roof.')
garden_5.user = user_5
garden_5.remote_photo_url = url
garden_5.save


url = 'https://res.cloudinary.com/olimarrio/image/upload/v1535035897/butterfly.jpg'
garden_6 = Garden.new(title: 'Butterfly Garden', address: '1 Hollybush Road', price: 65, description: 'Follow the trail through a jungle habitat in the heart of London as butterflies fly around you. You will pass hungry caterpillars, insects emerging from their chrysalises and busy feeding stations.')
garden_6.user = user_6
garden_6.remote_photo_url = url
garden_6.save

url = 'https://res.cloudinary.com/olimarrio/image/upload/v1535035898/water.jpg'
garden_7 = Garden.new(title: 'Water Garden', address: '12 Falmouth Gardens', price: 76, description: 'A new planting scheme to recapture the Victorian vision and help maintain water quality. Native water lilies, yellow flag iris, flowering rush and purple loosestrife are rooted in cages just below the water. New walkways help ducks get in and out of the water.')
garden_7.user = user_7
garden_7.remote_photo_url = url
garden_7.save

url = 'https://res.cloudinary.com/olimarrio/image/upload/v1535035897/field.jpg'
garden_8 = Garden.new(title: 'Country Field', address: '67 Winchester Street',price: 95, description: '3 acres of secluded parkland garden. Large open level and gently sloping spaces enclosed by large specimen mature trees and hedgerows. The parkland forms part of the private grounds of a picturesque restored Victorian rectory.')
garden_8.user = user_8
garden_8.remote_photo_url = url
garden_8.save

url = 'https://res.cloudinary.com/olimarrio/image/upload/v1535035897/flower.jpg'
garden_9 = Garden.new(title: 'Flower Garden', address: '90 Love Lane', price: 100, description: 'Magnificent Cedar trees and Tulip trees set in fine lawns with seasonal beds of spring and summer flowers are the quintessential Edwardian Garden. With its lake and deer park viewing areas the Flower Garden is a favourite spot for parents with small children.')
garden_9.user = user_9
garden_9.remote_photo_url = url
garden_9.save







# puts "#{garden.errors.messages}"

puts "Created #{Garden.count} gardens and #{User.count} users."


