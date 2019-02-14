# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
types = ['Rehearsal Space', 'Podcast Space', 'Home Studio', 'Mid-Level Studio', 'Top-Line Studio']
types.each do |type_name|
  Type.create(name: type_name)
end

%w(user user1 user2).each do |login|
  User.create(email: "#{login}@example.com", password: 'password', password_confirmation: 'password')
end

Studio.create(user: User.first, types: [Type.first, Type.last], name: 'a', details: 'a', minimum_booking: 'a', hours: 'a', location: 'a', price: 5)