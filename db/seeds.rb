# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Sample.destroy_all

sample1 = Sample.create(title: "Strange Rain Guitar Ending", date: "2009", note: "has drums in background", audio_data:"./audio/strange_rain_guitar.wav")