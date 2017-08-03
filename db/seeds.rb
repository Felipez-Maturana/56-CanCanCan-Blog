# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Comment.delete_all
Post.delete_all
User.delete_all


user1= User.create!(email: :'f@f.cl', password: :'lololo00')
user2= User.create!(email: :'d@d.cl', password: :'lololo00')


post1 = Post.create!(name:'Post 1', user: user1)
post2 = Post.create!(name:'Post 2', user: user2)

