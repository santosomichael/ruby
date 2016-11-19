# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Zombie.create(name: "Ash", graveyard: "Glen Haven Memorial")
Zombie.create(name: "Bob", graveyard: "Chapel Hill Cemetery")
Zombie.create(name: "Jim", graveyard: "My Father's Basement")
Tweet.create(status: "Where are you now", zombie_id: "1")
Tweet.create(status: "Where are you 2", zombie_id: "2")
Tweet.create(status: "Where are you 3", zombie_id: "3")
Tweet.create(status: "Where are you 1 lagi", zombie_id: "1")



