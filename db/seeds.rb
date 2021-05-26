# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Sample.destroy_all
User.destroy_all

user1 = User.create(name: "Marc", username:"marcus")

# sample1 = Sample.create(title: "Strange Rain Guitar Ending", date: "2009", note: "has drums in background", shared: true, user_id: user1.id)
# sample2 = Sample.create(title: "Vocals from Radio Recording", date: "20018", note: "can hear the car in the background", shared: true, user_id: user1.id)
# sample3 = Sample.create(title: "garden concert saxophone", date: "2007", note: "fun and pretty clear", shared: true, user_id: user1.id)
# sample4 = Sample.create(title: "flutes", date: "1994", note: "from old record. has kind of an urgent vibe", shared: true, user_id: user1.id)

