# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


u1 = User.create!(email:"testemail@pmail.com", password:"yesyes")

Project.create(title: "Project 1", author: "Barry the Chihuahua", user_id:u1.id, desc:"Sample Description", 
	image_url:"https://media.mnn.com/assets/images/2014/12/gray-squirrel-uc-berkeley.jpg.560x0_q80_crop-smart.jpg", 
	github_link:"https://github.com/ahawkins94")
