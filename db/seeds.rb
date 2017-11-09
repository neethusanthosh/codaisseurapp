# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.destroy_all

Event.destroy_all
User.destroy_all
neethu =User.create!( email: 'neethusanthosh01@gmail.com',
  password: '123456')

  party = Category.create!(name: "Party")
  get_together = Category.create!(name: "s_Party")
  dinner_party= Category.create!(name: "Dinner party")

  Event.create!(name:"Event Night",
  description: "An open evening......blah blah blah blah.",
  location: "Amsterdam",
  price: "10.0",
  capacity: "50",
  includes_food:true,
  includes_drinks:true,
  starts_at:DateTime.new(2018,10,4),
  ends_at:DateTime.new(2018,10,6),
  active:true,
  user: neethu,
  categories:[party,get_together,dinner_party])




neethu = User.create(email: "neethusanthosh01@mail.com", password: "123456")
sandeep = User.create(email: "sandeepsasidharan206@mail.com", password: "654321")
nithu = User.create(email: "neethusanthosh91@mail.com", password: "abc123")

Event.create(name: "You will never forget this!",
   description: "An open evening......blah blah blah blah.",
   location: "Amsterdam",
   price: 100,
   capacity: "50",
   includes_food:true,
   includes_drinks:true,
   starts_at:DateTime.new(2018,10,4),
   ends_at:DateTime.new(2018,10,6),
   active: true,
  user: neethu,
  categories: [party, dinner_party])
