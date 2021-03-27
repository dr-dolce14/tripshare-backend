# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
    User.create(name: Faker::Cosmere.knight_radiant, pic: Faker::LoremFlickr.image, username: Faker::Creature::Dog.meme_phrase, password_digest: Faker::TvShows::TheExpanse.ship , email: Faker::Internet.free_email)
end

10.times do 
 Trip.create(name: Faker::Hipster.sentence(word_count: 3), location: Faker::Movies::Hobbit.location, user_id: User.all.sample.id)
end

10.times do
    Participant.create(user_id: User.all.sample.id, trip_id: Trip.all.sample.id)
end