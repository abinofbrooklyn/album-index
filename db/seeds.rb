# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Seeding"

10.times do |artist|
  Artist.create!(name: "Artist #{artist}")
end

puts "10 artist created"

50.times do |album|
  Album.create(
    title: "Album #{album}",
    artist_id: Artist.last.id
  )
end

puts "50 albums created"

1000.times do |song|
  Song.create(
    title: "Song #{song}",
    artist_id: Artist.last.id,
    album_id: Album.last.id
  )
end

puts "500 songs created"

puts "Done"
