# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


u1 = User.create!(email:"testemail@pmail.com", password:"yesyes")
u2 = User.create!(email:"testemail2@pmail.com", password:"yesyes2")
u3 = User.create!(email:"admin@pmail.com", password:"admintest")


Project.create(title: "Project 1", author: "Barry the Chihuahua", user_id:u1.id, desc:"Sample Description", 
	image_url:"https://media.mnn.com/assets/images/2014/12/gray-squirrel-uc-berkeley.jpg.560x0_q80_crop-smart.jpg", 
	github_link:"https://github.com/ahawkins94")

Project.create(title: "Project 2", author: "Garry the Greyhound", user_id:u2.id, desc:"Sample Description", 
	image_url:"http://cdn.images.express.co.uk/img/dynamic/128/590x/Red-squirrel-668542.jpg", 
	github_link:"https://github.com/cdacres")