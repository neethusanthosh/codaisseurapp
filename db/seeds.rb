# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
neethu =User.create!( email: 'neethusanthosh01@gmail.com',
  password: '123456')

Event.create!({name:"Demo night",
description: "An open evening......blah blah blah blah.",
location: "Amsterdam",
price: "10.0",
capacity: "50",
includes_food:true,
includes_drinks:true,
starts_at:DateTime.new(2018,10,4),
ends_at:DateTime.new(2018,10,6),
active:true,
user: neethu})
