# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Person.destroy_all

Person.create! [
 {first_name: "Kalman", last_name: "Smith", age: 33},
 {first_name: "John", last_name: "Whatever", age: 27},
 {first_name: "Michael", last_name: "Smith", age: 15}
]
