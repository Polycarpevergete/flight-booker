class Planet < ApplicationRecord
    has_many :departing_flights, :foreign_key => "planet_departure_id", :class_name => "Flight"
    has_many :arriving_flights, :foreign_key => "planet_arrival_id", :class_name => "Flight"
end
