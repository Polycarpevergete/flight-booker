# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

6.times do |n|
  code = Faker::Space.unique.galaxy
  Planet.create!(code: code)
end

10.times do |n|
Flight.create!(planet_departure_id: 1+rand(6),
               planet_arrival_id:   1+rand(6),
               start_datetime: Time.at(rand*Time.now.to_i),
               flight_duration: Faker::Space.distance_measurement
    )
end